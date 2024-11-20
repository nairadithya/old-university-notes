cvx_begin quiet
variables x y
maximize x + y
subject to
x+y <=4
2*x + x^2 + y^2<=15
cvx_end
sprintf('x=%0.2f y=%0.2f maxvalue=%0.2f',x,y,x+y)
