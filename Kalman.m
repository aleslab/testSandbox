nt=10
gain=0.3
X(1)=1
obs(1)=0.8
P(1)=0.4
estimate(1)=obs(1)
for it=2:nt
    X(it)=X(it-1)+randn();
    obs(it)=X+randn()obs_noise;
end