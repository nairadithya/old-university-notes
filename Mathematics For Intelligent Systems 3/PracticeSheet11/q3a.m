cvx_begin quiet
variables x y z
minimize x^2 + y^2 -10*x -10*y + 2*z 
subject to
5*x^2 + 3*y + z - 9 <=0
6 - x + y - z + x^2 <=0
2*x - 7*y + z - 11 == 0
cvx_end
sprintf('x=%0.2f y=%0.2f, z = %0.2f,  maximum value=%0.2f',x,y,z,x^2 + y^2 -10*x -10*y + 2*z )
