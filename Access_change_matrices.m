%accessing parts of a matrix
%make matrix
x = [1:4; 5:8; 9:12]

x =

     1     2     3     4
     5     6     7     8
     9    10    11    12

%access matrix
% X (column number first then row)
% scrub that row first then column
x (2, 3)

ans =

     7

x = [1:4; 5:8; 9:12]

x =

     1     2     3     4
     5     6     7     8
     9    10    11    12

x (2,3)

ans =

     7

%call centre variable
centre = x(2,3)

centre =

     7

bob = x (3,3)

bob =

    11

X (2,3) = 97

X =

     0     0     0
     0     0    97

%this changes the number of a vector in the matrix
X (2,2) = 123

X =

     0     0     0
     0   123    97

ZYZ
Undefined function or variable 'ZYZ'.
 
ZYZ(2,2)
Undefined function 'ZYZ' for input arguments of type 'double'.
 
ZYZ(2,2)=123

ZYZ =

     0     0
     0   123


x(4,5) = 456

x =

     1     2     3     4     0
     5     6     7     8     0
     9    10    11    12     0
     0     0     0     0   456

%change multiple number in matrix at once
x = [ 1 2 3; 4 5]
Error using vertcat
Dimensions of matrices being concatenated are not consistent.
 
x = [1 2 3; 4 5 6]

x =

     1     2     3
     4     5     6

x (2,[1,3])

ans =

     4     6

%slices of sceond rown and gives sub array
