#{A = randi([1 2],4,4);
A = A - diag(diag(A));
A = A + eye(size(A));
A1 = triu(A);
A2 = triu(A);
newA = A2*A1;
eigVal = [1 2 3 4];
S = diag(eigVal);
D = newA*S*inv(newA);
A = (D-eigVal(1)*eye(size(A)))
B = (D-eigVal(2)*eye(size(A)))
C = (D-eigVal(3)*eye(size(A))*(D-eigVal(4)*eye(size(A))))
#}
A=randi([-3 3], 4,4);
B= A-diag(diag(A)); 
B=B+eye(4) ; 
A1=triu(B); 
A2= tril(B);
M=A1*A2 ;
L1=1;L2=2;L3=3,L4=4;
S=diag([L1,L2,L3,L4]);
D=inv(M)*S*M;
I3=eye(4);
A=(D-L1*I3);
B=(D-L2*I3);
C=(D-L3*I3)*(D-L4*I3);
A*B*C
