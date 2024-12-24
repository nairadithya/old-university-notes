potions_study = [3;15;6;8;4;2;10];
potions_exam = [75;95;65;70;85;80;65]
da_study = [4;12;9;6;2;3;10];
da_exam = [70;98;85;80;65;75;92]
C1 = cov(potions_exam, potions_study)
R1= C1(1,2)/(sqrt(C1(1,1))*sqrt(C1(2,2)))
C2 = cov(da_exam, da_study)
R2 = C2(1,2)/(sqrt(C2(1,1))*sqrt(C2(2,2)))


% b
% DA is more strongly correlated
