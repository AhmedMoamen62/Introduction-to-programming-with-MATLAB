function valid = valid_date(year,month,day)
if ~isscalar(year) || year < 1 || year ~= fix(year)
    valid = false;
    return
end
if ~isscalar(month) || month < 1 || month ~= fix(month)
    valid = false;
    return
end
if ~isscalar(day) || day < 1 || day ~= fix(day)
    valid = false;
    return
end
if day > 31 || month > 12
    valid = false;
    return
end
if month == 1 
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 2 
    if rem(year,400) == 0 || (rem(year,100) ~= 0 && rem(year,4) == 0)
        if day <= 29
            valid = true;
        else
            valid = false;
        end
    else
        if day <= 28
            valid = true;
        else
            valid = false;
        end
    end
elseif month == 3
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 4
    if day <= 30
        valid = true;
    else
        valid = false;
    end
elseif month == 5
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 6
    if day <= 30
        valid = true;
    else
        valid = false;
    end
elseif month == 7
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 8
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 9
    if day <= 30
        valid = true;
    else
        valid = false;
    end
elseif month == 10
    if day <= 31
        valid = true;
    else
        valid = false;
    end
elseif month == 11
    if day <= 30
        valid = true;
    else
        valid = false;
    end
elseif month == 12
    if day <= 31
        valid = true;
    else
        valid = false;
    end
else
    valid = false;
end
end