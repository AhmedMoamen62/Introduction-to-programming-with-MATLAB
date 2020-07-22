function s = under_age(age,limit)
if nargin < 2
    limit = 21;
end
if age < limit
    s = true;
else
    s = false;
end