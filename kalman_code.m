Z = [0.390	0.500	0.480	0.290	0.250	0.320	0.340	0.480	0.410	0.450];
Xinitial_time_point=0;
Pinitial=1;
R=0.1
Xhat(1)=Xinitial_time_point;
P(1)=Pinitial;
K(1)=P(1)/(P(1)+R);
Xhat (1)= Xhat(1)+ K(1)*(Z(1)-Xhat(1));
P(1)=(1-K(1))*P(1);
for k=2:11, 
    Xhat(k)=Xhat(k-1);
    P(k)=P(k-1);
    K(k)=P(k)/(P(k)+R);%measurement update
    Xhat(k)=Xhat(k)+ K(k)*(Z(k)-Xhat(k));
    P(k)=(1-K(k))*P(k);
   
end