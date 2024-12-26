
cvx_begin quiet
variables x y
minimize x^2+2*y^2
subject to
x+y >=1
x>=0
y>=0
cvx_end
sprintf('x=%0.2f y=%0.2f, maximum value=%0.2f',x,y,x^2+2*y^2)
