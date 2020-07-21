% format compact
% clear
% clc
% rand(3,4) % return a matrix 3 by 4 with 0 to 1 numbers
% 1+rand(3,4)*9 % change the range to be from 1 to 10

% main function

function [a s] = myRand(low,high)
a = low+rand(3,4)*(high - low); % a is a local variable
v = sumAllElements(a);
s = sum(v);

% local functions (subfunctions) : we can't call it

function summa  = sumAllElements(M)
% global v; % to make it accessible outside this scope
v = M(:);
summa = sum(v); % to make it one vector
 
