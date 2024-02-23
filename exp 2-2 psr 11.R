N=800
N
n=5
n
p=1/2
p
q=1/2
q
P5=dbinom(5, n, p)
P5
E_familes_5=P5*N
E_familes_5
P3= dbinom(3, n, p)
P3
E_familes_3=P3*N
E_familes_3
P_2_3=(dbinom(2, n, p) + dbinom(3, n, p))
P_2_3
E_familes_2_3= P_2_3*N
E_familes_2_3
P_1= sum(dbinom(1:5, n, p))
P_1
E_familes_1= P_1*N
E_familes_1
P_2= sum(dbinom(0:2, 5, p))
P_2
E_familes_2= P_2*N
E_familes_2
P_2_2= dbinom(2, 4, p)^2
P_2_2
E_familes_2_2= P_2_2* N
E_familes_2_2