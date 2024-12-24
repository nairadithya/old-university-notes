
A = [9 3 5 -1;2 -5 -1 0;1 6 11 -1;1 1 1 -5];
b = [16;-4;17;-2];

n = 100; % No. of iterations
D = diag(diag(A));
L = -tril(A,-1);
U = -triu(A,1);

X = zeros(size(A)(1),n);
T = inv(D)*(L+U);
c = inv(D)*b;
format long 
for i = 2:n
  X(:,i) = T*X(:,i-1) + c;
  X(:,i)
  if(X(:,i) == X(:,i-1))
    i-1
    break;
  end
end

