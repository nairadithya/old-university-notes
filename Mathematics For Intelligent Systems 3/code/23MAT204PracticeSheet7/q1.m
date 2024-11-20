n = 10;
p = 0.3;
a = pdf('bino',5,n,p)
b = pdf('bino',10,n,p)
c = cdf('bino',2,n,p)
d = 1-cdf('bino',8,n,p)
