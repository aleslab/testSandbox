Z = [0.390	0.500	0.480	0.290	0.250	0.320	0.340	0.480	0.410 0.450]; % signals measures from device
Xinitial_time_point = 0; %define first data point before first real data point which is 0.390;
Pinitial = 1; % define first Pk before first calculations produce a real value
R = 0.1; % not realy sure what R is but is defined as 0.1 in bilgins example!

% the above four lines define measurement points and starting points as
% the equation needs to start somewhere

Xhat (1) = Xinitial_time_point; %first Xhat measure is zero as stated above
P(1) = Pinitial; % state first Pk value which is 1 for this case
K(1) = P(1)/P(1)+R % calculates the first Kk value in the equation
Xhat (1) = Xhat(1)+K(1)*(Z(1)-Xhat(1)); %Calculate first real value in equation which is first Xhat value
P(1) = (1-K(1))*P(1); %Calculate first kalman gain
for k=2:10 % for loop to reiterate equation over the all data points 2 -11 as we provided a nominal starting point 
    Xhat(k)=Xhat(k-1); % X hat (k) is Xhat minus the previous k
    P(k) = P(k-1); % Pk is inital valuse of Pk - 1
    K(k)= P(k) /(P(k) + R) % KK caluclation whihc is previous Pk / itself + value of R
    Xhat(k) = Xhat(k) + K(k) * (Z(k)-Xhat(k)); %calculation for Xk 
    P(k) =(1-K(k)) * P(k);
end

 


