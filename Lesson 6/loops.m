format compact
clear
clc
u = [5 4 8 8 2];
v = [5 5 7 8 8];
w = u - v
for i = 1:length(u)
    w(i) = u(i) - v(i);
end
w

A = randi(10,3,4)
p = A.*A
[row col] = size(A)
for r = 1:row
    fprintf('Working on row %d ...\n',r);
    for c = 1:col
        p(r,c) = A(r,c) * A(r,c);
        fprintf('(%d %d)\n',r,c);
    end
end
p

N = 7;
for m = 1:N
    for n = 1:m
        fprintf('*');
    end
    fprintf('\n');
end

% Logical Indexing
[4 -1 7 5 3] > [5 -9 6 5 -3]
c = [2>1 2<1 ~(3>2 && 4>5)]
holmes = logical([1 -2 0 0 9.12 -2])
a = 1:3
a(c) % will return values when index of c equal true
a > 0
rng(0);
r  = randi(10,1,6)
holmes
r(holmes)
v = [56 34 -2 7 29 53 30 -3 5 45]
keepers = v >= 0
w = v(keepers)
w = v(v >= 0)
confidence = [100 97 11 12 76 76 80 9 4 98]
v_10 = v(confidence >= 10)
v_20 = v(confidence >= 20)

% if we want to write code to do that task
% w = [];
% j = 0;
% for i = 1:length(v)
%     if v(i) >= 0
%         j = j + 1;
%         w(j) = v(i);
%     end
% end

v0 = [50 35 -8 5 30 49 30 0 10 50]
v_bigger = v(v > v0)

v
v(v < 0) = 0
v = [56 34 -2 7 29 53 30 -3 5 45]
v(v < 0) = [100 200]

v = [56 34 -2 7 29 53 30 -3 5 45]
v(v < 0) = v(v < 0) + 100

A = [1:3; 4:6]
B = A(A>2) % it will converted to column vector
fprintf('%18d\n%6d%6d%6d\n',[3 4 5 6]) % %18d represent spaces in printing
A
A_column_major = A(:)
A_column_major(A_column_major > 2)
B = A(A>0)

% column major order
rng(0); A = randn(5)
A(A<0) = 0
rng(0); A = randn(5)
A(A<0) = 101:108 % the number that are less than zero must be the same as the right array number
rng(0); A = randn(5)
A(A<0) = (101:108)'
% A(A > 0.1) = 101:107 % not the same number to be assigned
rng(0); A = randn(5)
A(A>0.1) = sqrt(A(A > 0.1))

A = [89 82 11 53;33 5 59 42]
B = [34 44 52 64;62 73 58 99]
A((A>B)) = A(A>B) - B(A>B)


tic; sum(1:1e3); toc
tic; sum(1:1e6); toc
tic; sum(1:1e8); toc

% tic; noprealloc; toc
tic; prealloc; toc

