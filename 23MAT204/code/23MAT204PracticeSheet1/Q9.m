A = randi([-9 9],3,3);
A = A - diag(diag(A));
A = A + eye(size(A));
A1 = triu(A);
A2 = tril(A);
newA = A2*A1;

S = diag(eig(newA));
D = newA*S*inv(newA);
A = (D-eig(newA)(1)*eye(size(A)))
B = (D-eig(newA)(2)*eye(size(A)))
C = (D-eig(newA)(3)*eye(size(A)))
