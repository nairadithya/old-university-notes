[x,y] = meshgrid(-10:10,-10:10)

z = 4.*x.^2 + 9.*y.^2 - 72;

contour(x,y,z,'ShowText','on')
% B part
pkg load symbolic
% syms x y z;
% z = 4.*x.^2 + 9.*y.^2 - 72;
% gradient(z,[x,y])
% hessian(z,[x,y])

% C part
figure;
contour(x,y,z,'ShowText','on')
[px,py] = gradient(z)
hold on;
quiver(x,y,px,py)
