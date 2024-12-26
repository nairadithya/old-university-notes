A = [-4 1 1;1 -6 7; 1 7 -9];
P = randi(15,3);
B = P*A*inv(P);
P = randi(15,3);
C = P*A*inv(P);
