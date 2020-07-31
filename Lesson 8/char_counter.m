function charnum = char_counter(file,a)
fid = fopen(file,'rt');
if fid < 0 || ~ischar(a)
    charnum = -1;
    return;
end
charnum = 0;
oneline = fgets(fid);
while ischar(oneline)
    for i= 1:length(oneline)
        if oneline(i) == a
            charnum = charnum + 1;
        end
    end
    oneline = fgets(fid);
end
fclose(fid);
end