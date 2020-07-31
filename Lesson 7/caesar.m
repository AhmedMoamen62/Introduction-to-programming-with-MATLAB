function coded = caesar(str,shift)
sz = size(str,2);
for i = 1:sz
    act_shift = rem(shift,95);
    t = str(i) + act_shift;
    if t > 126
        new_char = t - 95;
        coded(i) = char(new_char);
    elseif t < 32
        new_char = t + 95;
        coded(i) = char(new_char);
    else
        coded(i) = char(t);
    end
end

% Another solution
% function txt = caesar(txt,key)
%     txt = double(txt) + key;
%     first = double(' ');
%     last = double('~');
%     % use mod to shift the characters - notice the + 1
%     % this is a common error and results in shifts 
%     % being off by 1
%     txt = char(mod(txt - first,last - first + 1) + first);
% end

% Another solution
% function y = caesar2(ch, key)
%     v = ' ' : '~';
%     [~, loc] = ismember(ch, v);
%     v2 = circshift(v, -key);
%     y = v2(loc);
% end