format compact
clear
clc
x = 23
class(x) % return the data type , all data types by default are double
class(sqrt(-1)) 
y = 1:8
rng(0); z = rand(3,4)
whos
class('Sup?') % char
class(3<4) % logical
NaN % not a number
Inf % infinty
isa(x,'double')

x = single(98.76)
n = int8(-16)
m = uint16(1234)
whos
k = uint8(500) % overflow
k = uint8(256) % overflow
k = uint8(-1)
class(k)
k = 2
class(k)
k = 'It makes sense'
class(k)
% return the range of the data type
intmax('uint8')
intmin('uint8')
intmin('uint32')
intmin('int32')
realmax('double')
realmin('single')


% strings (vector of chars)
MOOC_title = 'MATLAB for Smarties'
length(MOOC_title)
MOOC_title(1)
MOOC_title(1:6)
MOOC_title(end-8:end)

txt1 = 'colonel'
txt2 = 'kernel'
% txt1 == txt2

a = MOOC_title(1:6)
b = a(end:-1:1)
a == b


message = 'Let''s skip class today!'
code = double(message)
secret = char(code + 3)
char(secret - 3)
friends = ['Bill';'Mary';'John'] % 2D char array
line1 = '12345678'
line2 = 'abcdefgh'
txt = [line1;line2]
txt'

MOOC_title
findstr(MOOC_title,'LAB') % find in a string
findstr(MOOC_title,'lab') % empty output
findstr('Team','I')
findstr(MOOC_title,'r')
lang = 'MATLAB'
strcmp(MOOC_title,lang) % string compare
strcmp(MOOC_title(1:6),lang)
strcmpi(MOOC_title(1:6),'Matlab') % ignore case

pi_number = 3.1416
pi_digits = '3.1416'
size(pi_number)
size(pi_digits)
class(pi_number)
class(pi_digits)
pi_number + 1
pi_digits + 1
double(pi_digits) + 1
str2num(pi_digits)
str2num(pi_digits) + 1
num2str(pi_number)
num2str(pi_number) + 1

r = 12
fprintf('The area of a circle with radius %.2f is %.2f!\n',r,pi*r^2);
sprintf('The area of a circle with radius %.2f is %.2f!\n',r,pi*r^2)
str = sprintf('The area of a circle with radius %.2f is %.2f!\n',r,pi*r^2)

% Structs
account.number = 1234567
account.balance = 5000
account.owner.name = 'Joe Smith'
account.owner.email = 'ahmedmoamen@gmail.com'
class(account)
class(account.number)
class(account.balance)
account.owner
account(2).number = 7654321
account(2).owner
account(2).balance
account(2).balance = 1000
account(2).owner.name = 'Ahmed Moamen'
account(1)
account(2)
account(2).owner.name
account(1).owner.name
length(account(1).owner.name)
length(account(2).owner.name)
account(1).owner.age = 18
account(1:2).owner
isfield(account(2).owner,'age')
isfield(account(1).owner,'age')
rmfield(account(1).owner,'age') % it will return a changed struct, the input will be the same
account(1).owner
account(1).owner = rmfield(account(1).owner,'age')
account(1).owner
course = struct('Area','CS','number',103,'title','Machine Learning')

% Cells
c{1} = pi
c{2} = 'Cell or not cell?'
c{1} % {} return the element
c{2}
c(1) % () return the cell element pointer
c(2)
class(c(1)) % a cell
c1 = {[1 2], [10 20]}
c2 = c1
c1{1,1} = 'strawberries'
c2{1,1} % won't be changed as MATLAB copy the data but not the pointer to the data


