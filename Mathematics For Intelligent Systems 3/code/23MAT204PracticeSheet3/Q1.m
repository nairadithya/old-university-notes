x = linspace(-5,5);
y = linspace(-5,5);
x = x';
y = y';
z = z';
size(x)
size(z)

[x,y] = meshgrid(-5:5,-5:5)
z = 1./(abs(x) + abs(y) + 0.5*ones(size(x)));
contour(x,y,z,15)
