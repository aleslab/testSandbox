# testSandbox
Use this repository for mucking around and testing git
h = animatedline;
axis([0,4*pi,-1,1])

x = linspace(0,4*pi,1000);
y = sin(x);
for k = 1:length(x)
    addpoints(h,x(k),y(k));
    drawnow
end
> imsize =100;
>> lamda = 10;
>> theta = 15;
>> sigma = 10

sigma =

    10

>> sigma = 10;
>> phase = .25;
>> trim=.005;
>> 
>> X = 1:imsize;
>> X0 = (x / imsize) - .5;
Undefined function or variable 'x'.
 
Did you mean:
>> X0 = (X / imsize) - .5;
>> figure;
>> plot (X0);
>> 
>> sinX = sin(X0 * 2*pi);
>> plot(sinX);
>> 
>> freq = imsize/lamda;
>> Xf = X0 * freq * 2*pi

Xf =

  Columns 1 through 10

  -30.7876  -30.1593  -29.5310  -28.9027  -28.2743  -27.6460  -27.0177  -26.3894  -25.7611  -25.1327

  Columns 11 through 20

  -24.5044  -23.8761  -23.2478  -22.6195  -21.9911  -21.3628  -20.7345  -20.1062  -19.4779  -18.8496

  Columns 21 through 30

  -18.2212  -17.5929  -16.9646  -16.3363  -15.7080  -15.0796  -14.4513  -13.8230  -13.1947  -12.5664

  Columns 31 through 40

  -11.9381  -11.3097  -10.6814  -10.0531   -9.4248   -8.7965   -8.1681   -7.5398   -6.9115   -6.2832

  Columns 41 through 50

   -5.6549   -5.0265   -4.3982   -3.7699   -3.1416   -2.5133   -1.8850   -1.2566   -0.6283         0

  Columns 51 through 60

    0.6283    1.2566    1.8850    2.5133    3.1416    3.7699    4.3982    5.0265    5.6549    6.2832

  Columns 61 through 70

    6.9115    7.5398    8.1681    8.7965    9.4248   10.0531   10.6814   11.3097   11.9381   12.5664

  Columns 71 through 80

   13.1947   13.8230   14.4513   15.0796   15.7080   16.3363   16.9646   17.5929   18.2212   18.8496

  Columns 81 through 90

   19.4779   20.1062   20.7345   21.3628   21.9911   22.6195   23.2478   23.8761   24.5044   25.1327

  Columns 91 through 100

   25.7611   26.3894   27.0177   27.6460   28.2743   28.9027   29.5310   30.1593   30.7876   31.4159

>> sinX = sin (Xf);
>> plot(sinX, 'r');
>> phaseRad = (phase * 2* pi);
>> sinX = sin (Xf = phaseRad);
 sinX = sin (Xf = phaseRad);
                |
Error: The expression to the left of the equals sign is not a valid target for an assignment.
 
>> sinX = sin (Xf = phaseRad) ;
 sinX = sin (Xf = phaseRad) ;
                |
Error: The expression to the left of the equals sign is not a valid target for an assignment.
 
>> sinX = sin ( Xf = phaseRad) ;
 sinX = sin ( Xf = phaseRad) ;
                 |
Error: The expression to the left of the equals sign is not a valid target for an assignment.
 
>> sinX = sin ( Xf + phaseRad) ;
>> hold on;
>> plot(sinX, 'g');
>> hold off;
>>  
