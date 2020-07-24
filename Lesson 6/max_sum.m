function [summa index] = max_sum(v,n)
index = -1;
summa = 0;
for i = 1:(length(v)- n + 1)
    sum = 0;
    for j = 1:n
        sum = sum + v(i + j - 1);
    end
    if sum > summa
        summa  = sum;
        index = i;
    elseif i == 1
        summa = sum;
        index = i;
    end
end