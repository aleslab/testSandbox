%script to calculate predicited orientation using inputed kalman gains


O=randn(1, 10)%produce 10 random orientations;
E=O (n-1);
K=0.9

PE=O-E

X=(O-E)+ K*PE



plot (O,'b')
hold on
plot (X, 'g')
hold off


