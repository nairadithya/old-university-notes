[x,y] = meshgrid(-2*pi:2*pi,0:4*pi)

z = sin(x) + cos(y) + 3*exp(-x.^2 - y.^2);

figure;
subplot(2,1,1)
surf(x,y,z)

subplot(2,1,2)
contour(x,y,z,'ShowText','on')
hold on;
[px,py] = gradient(z)
quiver(x,y,px,py)

% B part





