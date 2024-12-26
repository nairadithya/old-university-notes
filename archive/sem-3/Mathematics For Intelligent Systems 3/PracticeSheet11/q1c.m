cvx_begin quiet
variables x y
maximize 3-(x-1)^2-(y-1)^2
subject to
2*x+x^2 + y^2 <=16
3*x - 7*y == 21
cvx_end
sprintf('x=%0.2f y=%0.2f, maximum value=%0.2f',x,y,(x-1)^2-(y-1)^2)
