cvx_begin quiet
variables x y
maximize x + y 
subject to
x^2+y^2<=4
x>=1
cvx_end
sprintf('x=%0.2f y=%0.2f maxvalue=%0.2f',x,y,x+y)
