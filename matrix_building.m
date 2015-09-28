%matrix building
A = [1 2 3 4; 8]
Error using vertcat
Dimensions of matrices being concatenated are not consistent.
 
A = [1 2 3 4; 5:8]

A =

     1     2     3     4
     5     6     7     8

%matrix in quick standard format
%state number in matrix followed by across and down columns
zeros (5, 6)

ans =

     0     0     0     0     0     0
     0     0     0     0     0     0
     0     0     0     0     0     0
     0     0     0     0     0     0
     0     0     0     0     0     0

ones(4,2)

ans =

     1     1
     1     1
     1     1
     1     1

%if one argument it will take the rows and colums as the same
zeros (4)

ans =

     0     0     0     0
     0     0     0     0
     0     0     0     0
     0     0     0     0

%line of diagonal in the matrix
diad ([7 3 9 1 ])
Undefined function 'diad' for input arguments of type 'double'.
 
Did you mean:
diag ([7 3 9 1 ])

ans =

     7     0     0     0
     0     3     0     0
     0     0     9     0
     0     0     0     1

rand

ans =

    0.8147

rand

ans =

    0.9058

%random number matrix
rand (3, 4)

ans =

    0.1270    0.0975    0.9575    0.9706
    0.9134    0.2785    0.9649    0.9572
    0.6324    0.5469    0.1576    0.4854

%rand one input argeument
rand (5)

ans =

    0.8003    0.9595    0.6787    0.1712    0.0971
    0.1419    0.6557    0.7577    0.7060    0.8235
    0.4218    0.0357    0.7431    0.0318    0.6948
    0.9157    0.8491    0.3922    0.2769    0.3171
    0.7922    0.9340    0.6555    0.0462    0.9502

%5 by 4 matrix between one and eleven
1 + rand (5, 4) * 10

ans =

    1.3445    2.8687    8.5469    2.1900
    5.3874    5.8976    3.7603    5.9836
    4.8156    5.4559    7.7970   10.5974
    8.6552    7.4631    7.5510    4.4039
    8.9520    8.0936    2.6261    6.8527

fix (1 + rand (5, 4) * 10
 fix (1 + rand (5, 4) * 10
                          |
Error: Expression or statement is incorrect--possibly unbalanced
(, {, or [.
 
Did you mean:
fix (1 + rand (5, 4) * 10)

ans =

     3     9     3    10
     8    10     9     4
     3     6     3     2
     6     2     9     3
     7     2     3     7

randi (10, 5 , 4)

ans =

     5    10     6    10
     4     3     1     2
     9     8     1     6
     6     8     6     5
     6     4     8     1

randi (10, 5, 4)

ans =

     4     2     8     2
     2     7     5     9
     8     3     1     6
     4     7     3    10
     6     7    10     1

randi (20, 5)

ans =

     9    17    17     3     3
     3    18     9     3    18
    20     2    19    18    13
     1     8     4    12     8
    16     6     6    11    11

%randi with a vector
%provide matrix with numbers between 5 and 10 in a 2 by 3 orgainasation
randi ([5 10], 2,3)

ans =

     7     6     6
     5     5     6

%randn(5)
randn(5)

ans =

   -0.5336   -0.0348    1.3514   -1.1201   -0.8655
   -2.0026   -0.7982   -0.2248    2.5260   -0.1765
    0.9642    1.0187   -0.5890    1.6555    0.7914
    0.5201   -0.1332   -0.2938    0.3075   -1.3320
   -0.0200   -0.7145   -0.8479   -1.2571   -2.3299

r = randn (1, 1000000);
%histogram function
hist (r, 100)
rand

ans =

    0.0159

hist (r, 100)
