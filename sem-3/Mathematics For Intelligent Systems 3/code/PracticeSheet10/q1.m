N = 200000;
x = -3 + rand(N,1)*3;
y = -2 + rand(N,1)*-2;
f1 = 3*x + y - 1;
f2 = 2*x - 3*y - 3;
ind1 = (f1<0);
ind2 = (f2<0);
ind3 = and(ind1,ind2);
a = [x(ind3),y(ind3)];
figure
plot(a(:,1),a(:,2),'.','MarkerSize',10);
axis equal
