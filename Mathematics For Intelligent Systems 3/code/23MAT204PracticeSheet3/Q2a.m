[x,y] = meshgrid(-10:10,-10:10)

z = 4.*x.^2 + 9.*y.^2 - 72;

contour(x,y,z,'ShowText','on')
