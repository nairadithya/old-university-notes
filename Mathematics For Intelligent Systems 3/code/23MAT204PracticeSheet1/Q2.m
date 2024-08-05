A = randi([-3 3],5,5);
A = A - diag(diag(A));
eigenVal = [9;8;7;6;5];
A = A + eye(size(A));

A1 = triu(A);
A2 = tril(A);

newA = A2*A1;

B = newA*diag(eigenVal)*inv(newA);
