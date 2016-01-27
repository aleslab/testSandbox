F=[0.5 0.5]
S= [1,4, 5, 10, 3, 3]

for it=2:length(S);
    partial_sum=0;
    for ik=1:length(F)
        partial_sum=partial_sum+S(it-ik+1)*F(ik);
    end
    R(it)=partial_sum;
end
        