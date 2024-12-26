% Create matrix with det 1
A = randi([1 100], 15,15);
A = A - diag(diag(A));
A = A + eye(size(A));
A1 = triu(A);
A2 = tril(A);
newA = A1*A2;
diagVec = ones(15,1);
diagVec(end) = 3;
S = diag(diagVec);
M = newA*S*inv(newA);
det(M)
