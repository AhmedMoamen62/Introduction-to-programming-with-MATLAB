function distance = get_distance(a,b)
distance = -1;
[~,~,all] = xlsread('Distances.xlsx');
row_i = -1;
col_i = -1;
for i = 2:size(all,2)
    if strcmp(all{1,i},a)
        row_i = i;
    end
end
if row_i == -1
    return;
end

for i = 2:size(all,1)
    if strcmp(all{1,i},b)
        col_i = i;
    end
end
if col_i == -1
    return;
end

distance = all{row_i,col_i};

end