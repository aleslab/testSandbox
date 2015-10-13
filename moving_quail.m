%%define meta variables (ie how long and how often we sample)
duration = 10 %%total object tracing time
dt = .1 %% how long p looks for object

%%define update equations (coefficent matrices)
A = [1 dt; 0 1];
B = [dt^2/2; dt];
C = [1 0]

%define main variables
u = 1.5;
Q = [0; 0];
Q_estimate = Q;
QuailAccel_noise_mag = 0.05;
Ninjavision_noise_mag = 10;
Ez = Ninjavision_noise_mag^2;
Ex = QuailAccel_noise_mag^2 * [dt^4/4 dt^3/2 dt^2];
P = Ex;


%% initize result variables

Q_loc = []
vel = []
Q_loc_meas = []

%%simulate what the ninga sees

figure (2);clf
figure (1); clf

for t = 0 :dt: duration
    
    QuailAccel_noise = QuailAccel_noise_mag * [(dt^2/2) * randn; dt*radn];
    Q=A * Q+ B * u + QuailAccel_noise;
    
   wfwfwfwf
Ninjavision_noise = Ninjavision_noise_mag * randn;
y = C * Q+Ninjavision_noise;
Q_loc = [Q_loc; Q(1)];
Q_loc_meas = [Q_loc_meas; y];
vel = [vel; Q(2)];
    
%plot what ninja sees
plot (0:dt:t, Q_loc, 'r.')
plot (0:dt:t, Q_loc_meas, 'k.')
axis ([0 10 -30 80])



