function x = rand_int(n,m)
x = randi(10,n,m); % randi(IMAX,N) , return N BY N and the max element = IMAX
fprintf('The last element on the last row is %d.\n',x(n,m));