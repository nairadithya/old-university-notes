
cvx_begin quiet
variables x y
minimize x^2 + y^2 
subject to
x+y <= 4
2*x + x^2 + y^2 <=15
cvx_end
sprintf('x=%0.2f y=%0.2f, maximum value=%0.2f',x,y,x^2+y^2)
