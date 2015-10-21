function [table summa] = snarky_multable(n ,m)
%multable multiplication table
%T = MULTABLE(N) returns an N by N matrix
%containing the multiplication table for the intergers 1 through N
%multable (n,m) returns an N by N matrix.
%both argumnets must be posisitve intergers
%[T SM] = MULTABLE (....) returns the matrix
%containing the mulitplication table in T
%and the sum of all its elements
persistent error_count;
if isempty(error_count), error_count=0;end % no errors yet
if nargin < 1
    error('must have at least one input argument');
end
if nargin <2
    m = n
elseif ~isscalar(m) || m < 1 || m ~= fix (m)
    error_count = error_count + 1
    if error_count <3, error ('m needs to be a positive interger');end
end
if ~isscalar(m) || n < 1 || m ~= fix (n)
    error_count = error_count + 1;
    if error_count < 3, error('n need to be a positive interger');end
end
if error_count>=3
    error_count = 0; %reverts to the basic error mesages
    error('what part of posisive interger do you not understand');
end
table = 1:n' * (1:m);

if nargout == 2 
    summa = sum(table(:));
end
