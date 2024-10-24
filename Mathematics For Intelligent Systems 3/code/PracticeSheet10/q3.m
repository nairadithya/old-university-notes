
N = 200000;
x =rand(N,1)*15;
y = rand(N,1)*15;
f1 = x + y - 4;
f2 = 2*x + x.^2 + y.^2 - 15;
ind1 = (f1<=0);
ind2 = (f2<=0);
ind3 = and(ind1,ind2);
a = [x(ind3),y(ind3)];
figure
plot(a(:,1),a(:,2),'.','MarkerSize',10);
axis equal
