format compact 
clear
clc
sqrt(9)
sqrt([1 4;9 16;25 36]) % can operate over a matrix
v = [1 2 3 -4 7]
sum(v)
A = [1 2;3 4]
sum(A) % will sum over columns
a = max([1 2 -4 8])
[a b] = max([1 2 -4 8]) % b it will be the index on the maximum
s = size([1 2;9 8;0 -2])
s(1)
s(2)
[row col] = size([1 2;9 8;0 -2])

zeros(5,6)
ones(4,2)
5*ones(4,2)
zeros(4) % 4 by 4
ones(1,5) % row vecotr
zeros(5,1) % column vector
diag([7 3 9 1]) % diagonal matrix

fix(1 + rand(5,4)*10) % round all to be integer
randi(10,5,4) % 5 row, 4 col, 10 is the range
randi(10,5) % 5 by 5
randi([5 20],2,3) % [5 20] is a range
randn(5) % 5 by 5 normalized numbers, standard deviation = 1
r = randn(1,1000000);
% hist(r,100) % 100 is the number of pins of histogram
rng(0) % random number generator to reinitialize the begining or the numbers , 0 is the start to begin with
rand % the same number will be generated every time to run the script
rng(2); [rand randn randi(10)]
rng(2); [rand randn randi(10)]

rng('shuffle'); [rand randn randi(10)] % shuffle to to randmize the numbers
rng('shuffle'); [rand randn randi(10)]






