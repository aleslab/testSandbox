[row coll] = size (A);
for r = 1:row
    for c = 1:col
        P(r,c) = A(r, c) * A(r,c);
        fprintf('%d %d)\n',r, c);
    end 
end
    
       