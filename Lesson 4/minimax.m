function [x y] = minimax(M)
x = abs(max(M') - min(M'))
y = max(max(M)) - min(min(M))
end