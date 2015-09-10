# testSandbox
Use this repository for mucking around and testing git
>> a = 1

a =

     1

>> b = 2

b =

     2

>> c = a + b

c =

     3

>> d = cos(a)

d =

    0.5403

>> sin (a)

ans =

    0.8415

>> a = [1 2 3 4]

a =

     1     2     3     4

>> a = 1 2 3; 4 5 6; 7 8 9]
 a = 1 2 3; 4 5 6; 7 8 9]
       |
Error: Unexpected MATLAB expression.
 
>> a = 1 2 3; 4 5 6; 7 8 10]
 a = 1 2 3; 4 5 6; 7 8 10]
       |
Error: Unexpected MATLAB expression.
 
>> a = [123; 456; 789]

a =

   123
   456
   789

>> z = zeros(5,1)

z =

     0
     0
     0
     0
     0

>> a + 10

ans =

   133
   466
   799

>> sin (a)

ans =

   -0.4599
   -0.4521
   -0.4442

>> x=1:10

x =

     1     2     3     4     5     6     7     8     9    10

>> y=x

y =

     1     2     3     4     5     6     7     8     9    10

>> plot (x, y)
>> title ('v vs x'), xlabel('x') ylabel('y')
 title ('v vs x'), xlabel('x') ylabel('y')
                               |
Error: Unexpected MATLAB expression.
 
>> title ('v vs x'), xlabel('x', ylabel('y')
 title ('v vs x'), xlabel('x', ylabel('y')
                                          |
Error: Expression or statement is incorrect--possibly
unbalanced (, {, or [.
 
Did you mean:
>> title ('v vs x'), xlabel('x'), ylabel('y')
>> yes
Undefined function or variable 'yes'.
 
>> y2 = 2*x;
>> hold on; plot(x, y2, 'r'); hold off;
>> legends('y vs 2x
