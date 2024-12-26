
cvx_begin quiet
variables x y
minimize x+y
subject to
(x-1)^2 + (y-1)^2 <= 1
x<=1
y<=1
cvx_end
sprintf('x=%0.2f y=%0.2f, maximum value=%0.2f',x,y,x+y)
