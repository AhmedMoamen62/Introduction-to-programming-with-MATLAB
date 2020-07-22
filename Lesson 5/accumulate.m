function total = accumulate(n)
persistent summa; % like a static variable
if isempty(summa)
    summa = n;
else
    summa = summa + n;
end
total = summa;