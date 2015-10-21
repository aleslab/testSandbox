function [table summa] = multable(n ,m)
%multable multiplication table
%T = MULTABLE(N) returns an N by N matrix
%containing the multiplication table for the intergers 1 through N
%multable (n,m) returns an N by N matrix.
%both argumnets must be posisitve intergers
%[T SM] = MULTABLE (....) returns the matrix
%containing the mulitplication table in T
%and the sum of all its elements

if nargin < 1
    error('must have at least one input argument')
end
if nargin <2
    m = n
elseif ~isscalar(m) || m < 1 || m ~= fix (m)
    error ('m needs to be a positive interger');
end

table = 1:n' * (1:m);

if nargout == 2 
    summa = sum(table(:));
end
