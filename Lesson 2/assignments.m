% Colon Operator Practice
odds = 1:2:100;
evens = 100:-2:1;

% Matrix Indexing Practice
A = [1:5; 6:10; 11:15; 16:20];
v = A(:,2)
A(end,:) = 0

% Matrix Arithmetic
A = [1:5; 6:10; 11:15; 16:20];
v = A(:,1)'
v(:,:) = 1
vt = A(1,:)'
vt(:,:) = 1
result = v*A*vt