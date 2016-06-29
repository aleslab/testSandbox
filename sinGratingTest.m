
screens=Screen('Screens');
screenNumber=max(screens);

white=WhiteIndex(screenNumber);
black=BlackIndex(screenNumber);
gray=round((white+black)/2);

% Contrast 'inc'rement range for given white and gray values:
%inc=white-gray;

% Open a double buffered fullscreen window and draw a gray background 
% to front and back buffers as background clear color:
w = Screen('OpenWindow',screenNumber, gray);

p = 32; %period
f = 1/p; %frequency
fr = 2*pi*f; %angular frequency in radians
x = [0:1:511];

grating = sin(fr*x);
gratingTex = Screen('MakeTexture', w, grating, [], 1);

Screen('DrawTexture', w, gratingTex, []);
KbStrokeWait();

sca
