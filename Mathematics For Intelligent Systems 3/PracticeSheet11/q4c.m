
cvx_begin quiet
variables x y
minimize x^2 + y^2
subject to
(x-1)^2+y^2<=9
x<=1
y<=1
cvx_end
sprintf('x=%0.2f y=%0.2f maxvalue=%0.2f',x,y,x^2+y^2)
