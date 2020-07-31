function matrix = sparse2matrix(cellvec)
matrix = zeros(cellvec{1});
matrix(:,:) = cellvec{2};
for i = 3:length(cellvec)
    matrix(cellvec{i}(1),cellvec{i}(2)) = cellvec{i}(3);
end