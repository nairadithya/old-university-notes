A = randi(10,10,10);
B = A;
for i = 1:10
	[Q R] = qr(B);
	B = R*Q
	end
eig(A) - diag(B);
