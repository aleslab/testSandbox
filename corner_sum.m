function s =corner_sum(A)
A=[1 2 3; 4 5 6; 7 8 9];
s = A(1,1) + A(1, end) + A(end, 1)+ A(end, end)
end


