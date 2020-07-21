format compact
clear
clc
X = [1:4;5:8;9:12]
X(2,3)
X(2)  % give the first calumn by default
center = X(2,3)
bob = X(3,3)
X(2,3) = 97
XYZ(2,2) = 123 % if isn't exit, matlab will create it with 2*2 and other elements = zeros
X(4,5) = 456 % wrong index ?! , matlab will extend the matrix
X = 99 % overwrite

X = [1:3;4:6]
X(2,[1 3]) % 2 row , 1 and 3 column
X([2,1],2) % 2 and 1 row , 2 column
X([2 1 2],[3 1 1 2])
X(2,1:3)
X(end,end) % end is a keyword =  last index
X(end,2)
X([2 end 1 end],3)
X(1,end - 1)
X(end+1,1) = 17
X(1,1:2:end)
X(1,end-1:end)
X(1:end,2)
X(:,2)
X(:,:) % same as X
X(1:end,1:end) % same as X

X(1:end,1)
X(1:end,1) = -44
X(1:end,2:3) = 9
X(1:end,2:3) = [10 20;30 40;50 60]

