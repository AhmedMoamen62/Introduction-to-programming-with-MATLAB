format compact
clear
clc
X = [1 5 -2;3 0 7]
Y = [1:3;4:6]
Z = X + Y
Z = X - Y
Z = X .* Y % .* array muliplication

A = [1 2 3; 4 5 6; 6 1 1 ; 0 1 3]
B = [2 -2; 3 8; 7 4]
[size(A),size(B)]
C = A*B % matrix multiplication

Z = X./Y % array division
Z = X.\Y % equal Y./X

2^3
X = [1 2;3 4]
N = [6 0.5; -1 2]
X.^N % array exponetiation
X^3
X*X*X

A = [1:3;4:6]
B = [3 5 2;6 7 2]
A + B
A + 3
3 + A
A - 1
2 .* A
2  * A
A ./ 2
2 ./ A
% 2/A % not allowed
A/2
A.^2
2.^A

