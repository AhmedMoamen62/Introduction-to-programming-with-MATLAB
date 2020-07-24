function f = fibo(n)
if (~isscalar(n) || n < 1 || n~= fix(n))
    error('n must be a positive integer!');
end
f(1) = 1;
f(2) = 2;
for i = 3:n
    f(i) = f(i - 2) + f(i - 1);
end