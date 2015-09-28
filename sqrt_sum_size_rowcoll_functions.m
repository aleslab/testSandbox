%squareroot_function
squrt (9)
Undefined function 'squrt' for input arguments of type 'double'.
 
Did you mean:
sqrt (9)

ans =

     3

%sqrt of matrix
sqrt ([1 4;9 16; 25 36])

ans =

     1     2
     3     4
     5     6

%function sum
v = [1 2 3 -4 7]

v =

     1     2     3    -4     7

sum(v)

ans =

     9

A = [ 1 2;3 4]

A =

     1     2
     3     4

sum (A)

ans =

     4     6

%maximum function
a = max ([1 2 -4 8])

a =

     8

[a b] = max ([ 1 2 -4 8])

a =

     8


b =

     4

%size function
s = size ([ 1 2;9 8;0 -2])

s =

     3     2

s(1)

ans =

     3

s(2)

ans =

     2

[row coll] size ([1 2;9 8;0 -2])
 [row coll] size ([1 2;9 8;0 -2])
            |
Error: Unexpected MATLAB expression.
 
[row col] size ([1 2;9 8;0 -2])
 [row col] size ([1 2;9 8;0 -2])
           |
Error: Unexpected MATLAB expression.
 
[row col]= size ([1 2;9 8;0 -2])

row =

     3


col =

     2

