cvx_begin quiet
variables x y
minimize 6*x-9*y
subject to
x-y >=2
3*x+y>=1
2*x-3*y>=3
cvx_end
sprintf('x=%0.2f y=%0.2f, maximum value=%0.2f',x,y,6*x-9*y)
