X = [1;4;7;9;12;15;21;13]
Y = [90;99;85;76;70;65;55;56]
C = cov(X,Y)
R= C(1,2)/(sqrt(C(1,1))*sqrt(C(2,2)))