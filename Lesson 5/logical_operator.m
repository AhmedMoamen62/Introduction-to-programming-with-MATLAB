format compact
clear
clc
10 == 20
3 == (35 -32)
x = (16*64 > 1000) + 9
x = 16*64 > 1000 + 9

[4 -1 7 5 3] .* [5 -9 6 5 -3]
[4 -1 7 5 3] > [5 -9 6 5 -3] % return logical array
[4 -1 7 5 3] <= 4
sum([14 9 3 14 8 3] == 14)

1 && 2
pi && -1234
0 && 1
23 && 0
0 && 0

1 || 2
pi || -1234
0 || 1
23 || 0
0 || 0

a = 1
b = 2
c = 0
d = ~(a && b) || (b && c)
d = ~(a && b) || (b || c)
b*(0<b && b<10)

~[1 pi 0 -2] % array operator
% [1 -3 0 9 0] && [pi 0 0 2 3] % isn't allowed, it's for scalar only
[1 -3 0 9 0] | [pi 0 0 2 3]
[1 -3 0 9 0] & [pi 0 0 2 3]
2 & [0 1;2 3]
2 | [0 1; 2 3]
1.4 < sqrt(2) & [pi > 3 -1 > 1]
1.4 < (sqrt(2) & [pi > 3 -1 > 1])
