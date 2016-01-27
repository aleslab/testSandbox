nt = 10 %number of data points
obs_noise=0.3%obervation noise
gain=.9 % kalman gain conifidence in the previous measure
X(1) = 3.9 % starting posistion
%measurment update?
obs(1)=X(1)+randn()*obs_noise;%starting point for first observation + noise
estimate(1)=obs (1) %estimate of obs
for it=2:nt
    X(it)=X(it-1)+randn(); % line in which model values are outlined
    obs(it) =X(it)+randn()*obs_noise;
    error=estimate(it-1)-obs(it)
    estimate(it)=estimate(it-1)-error*gain;
    
    
    
end

clf;

plot(X)
hold on
plot (obs)
plot (estimate, 'y')


