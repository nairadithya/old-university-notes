A = randi([-9 9],7,7);
A = A - diag(diag(A));
A = A + eye(size(A));
A1 = triu(A);
A2 = tril(A);
newA = A2*A1;
det(newA)
inv(newA)
