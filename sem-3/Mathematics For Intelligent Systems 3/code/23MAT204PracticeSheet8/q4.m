X = [78;40;94;22;76;84;90;62;65;39];
Y = [94;51;91;60;68;62;86;58;53;47]
C = cov(X,Y)
R= C(1,2)/(sqrt(C(1,1))*sqrt(C(2,2)))

