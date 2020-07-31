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

% Another solution
% function isvalid = valid_date(y, m, d)
%    % Check if the inputs are valid 
%    % Check that they are scalars
%    if ~(isscalar(y) && isscalar(m) && isscalar(d))
%        isvalid = false;
%    % Check that inputs are positive
%    elseif ~all([y, m, d] > 0)
%        isvalid = false;
%    % Check that inputs are integers (not the data type)    
%    elseif any(rem([y, m, d], 1))
%        isvalid = false;
%    % Check that m and d are below the max possible
%    elseif (m > 12) || (d > 31)
%        isvalid = false;
%    % The inputs could be a valid date, let's see if they actually are
%    else
%        % Vector of the number of days for each month
%        daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
%        % If leap year, change days in Feb
%        if isequal(rem(y, 4), 0) && (~isequal(rem(y, 100), 0) || isequal(rem(y, 400), 0))
%             daysInMonth(2) = 29;
%        end
%        maxDay = daysInMonth(m);
%        if d > maxDay
%            isvalid = false;
%        else
%            isvalid = true;
%        end
%        
%    end
% end