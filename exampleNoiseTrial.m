function [trialData] = exampleNoiseTrial(screenInfo, conditionInfo)

totalDuration = conditionInfo.preStimDuration+conditionInfo.stimDuration+conditionInfo.postStimDuration;
nFrames = round(totalDuration / screenInfo.ifi);
trialData.actualDuration = nFrames*screenInfo.ifi;
trialData.validTrial = false;
trialData.abortNow   = false;
%Strictly speaking this  isn't the _best_ way to setup the timing
%for rendering the stimulus but whatever.
conditionInfo.stimStartTime = GetSecs; %Get current time to start the clock
flipTimes = nan(nFrames,1);


%Now lets setup response gathering
%KBqueue's are the better way to get responses, quick and accurate but they can be
%fragile on different systems
if screenInfo.useKbQueue
    
    keysOfInterest=zeros(1,256);
    keysOfInterest(KbName({'f' 'j' 'ESCAPE'}))=1;
    KbQueueCreate(screenInfo.deviceIndex, keysOfInterest);
    KbQueueStart(screenInfo.deviceIndex);
    
    KbQueueFlush();
    
end

[x y] = meshgrid(linspace(-1,1,256));
%  sigma=.2
%  freq = 2;
gauss = exp( -(((x.^2)+(y.^2)) ./ (2* conditionInfo.sigma^2)) );
targetPattern = conditionInfo.targetAmp*sin(2*pi*conditionInfo.freq*x+rand*2*pi).*gauss;
targetPattern(gauss<.05)=0;

noisePattern = .4*randn(256,256)+.5;

% Convert it to a texture 'tex':
tex=Screen('MakeTexture', screenInfo.curWindow, noisePattern+targetPattern);

for iFrame = 1:nFrames
    
    thisTime =  GetSecs - conditionInfo.stimStartTime-conditionInfo.preStimDuration;
    %How long has it been since last draw?
    
    %relcalculate time to account for pre and post stim
    %
    conditionInfo.stimTime = min(max(thisTime,0),conditionInfo.stimDuration);
    
    % stimRect = calculateStimSize(screenInfo,conditionInfo);
    % Screen('fillOval', screenInfo.curWindow, [60 0 0 180], stimRect);
    Screen('DrawTexture', screenInfo.curWindow, tex, [], screenInfo.screenRect, [], 0);
    
    % Overdraw the rectangular noise image with our special
    % aperture image. The noise image will shine through in areas
    % of the aperture image where its alpha value is zero (i.e.
    % transparent):
    %Screen('DrawTexture', win, aperture, [], dstRect(i,:), [], 0);
    
    
    Screen('DrawingFinished',screenInfo.curWindow,screenInfo.dontclear);
    
    flipTimes(iFrame)=Screen('Flip', screenInfo.curWindow);
    
    if screenInfo.useKbQueue
        [ trialData.pressed, trialData.firstPress]=KbQueueCheck(screenInfo.deviceIndex);
    else
        [ trialData.pressed, secs, keyCode]=KbCheck(screenInfo.deviceIndex);
        trialData.firstPress = secs*keyCode;
    end
    
    
    %Pressed too early.  Abort trial and put in some default values in the
    %returned data.
    if trialData.pressed
        %         trialData.pressed = false;
        %         trialData.firstPress = zeros(size(trialData.firstPress));
        flipTimes(iFrame)=Screen('Flip', screenInfo.curWindow);
        trialData.flipTimes = flipTimes;
        trialData.validTrial = false;
        Screen('Close', tex);
        return;
    end
    
end
% After drawing, we can discard the noise texture.
Screen('Close', tex);

flipTimes(iFrame+1)= Screen('Flip', screenInfo.curWindow);
trialData.flipTimes = flipTimes;

curTime = GetSecs;

%Flush any events that happend before the end of the trial
if screenInfo.useKbQueue
    KbQueueFlush();
end

%Now fire a busy loop to process any keypress durring the response window.
while curTime<flipTimes(end)+conditionInfo.responseDuration
    