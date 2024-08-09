x = linspace(-2,2)
y = linspace(-2,2)
[x,y] = meshgrid(x,y);

% A
figure;
surfc(x,y,z)
% B
syms x y z;
z = x.*exp(-(x.^2 + y.^2));
gradient(z,[x,y])
hessian(z,[x,y])

