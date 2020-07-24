function summa = halfsum(m)
[row col] = size(m)
summa = 0;
for i = 1:row
    for j = i:col
        summa = summa + m(i,j);
    end
end