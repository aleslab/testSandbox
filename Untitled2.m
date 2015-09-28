imSize = 100;                           % image size: n X n
lamda = 10;                             % wavelength (number of pixels per cycle)
theta = 15;                              % grating orientation
sigma = 10;                             % gaussian standard deviation in pixels
phase = .25;                            % phase (0 -> 1)
trim = .005;                             % trim off gaussian values smaller than this
make linear ramp
X = 1:imSize;                           % X is a vector from 1 to imageSize
X0 = (X / imSize) - .5;                 % rescale X -> -.5 to .5
figure;                                 % make new figure window
plot(X0);                               % plot ramp
