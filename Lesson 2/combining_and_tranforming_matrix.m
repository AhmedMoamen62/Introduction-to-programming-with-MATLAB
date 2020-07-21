format compact
clear
clc
A1 = [1 1 1;1 1 1]
A2 = [2 2 2;2 2 2]
A3 = [3 3 3;3 3 3]
[A1 A2 A3]
[A1;A2;A3]

B1 = [1;1]  
B2 = [2 2;2 2]
B3 = [3 3 3;3 3 3]
[B1 B2 B3]  
[B1 B2 B3 B1]   
% [B1;B2;B3] % wrong operation as the matrix of B's haven't the same column number
% vertcat(B1,B2,B2)

H = [1:3;4:6]
G = H' % ' stand for transpose , H'(m,n) = H(n.m)
x = [1;3;5;7]
x = x'
1:2:5'
(1:2:5)'

