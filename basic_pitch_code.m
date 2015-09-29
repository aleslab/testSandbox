cf = 2000;                  % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d = 4.0;                    % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(3 * pi * cf * s);   % sinusoidal modulation
sound(s, sf);               % sound presentation
pause(d + 0.5);             % waiting for sound end