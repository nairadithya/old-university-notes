% 1
D = diag([24,10,5]);
e1 = [1;1;0];
e2 = [1;-1;0];
e3 = [0;0;1]
P = [e1 e2 e3];
A = P*D*inv(P)
% Diagonalization of A^5
A5 = P*D^5*inv(P)
