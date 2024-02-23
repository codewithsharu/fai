x <- c(0,1,2,3,4,5,6,7)
x
f <- c(7, 6, 19, 35, 30, 23, 7, 1)
f
p=1/2
p
q=1/2
q
N=sum(f)
N
n=7
n
p=1/2
p
q=1-p
q
p_x_bd1=choose(n,x)*p^x*q^(n-x)
p_x_bd1
apprx_p_x_bd1=round(p_x_bd1,4)
apprx_p_x_bd1
P_x_BD1=cbind(dbinom(x,n,p))
P_x_BD1
Apprx_P_X_BD1=round(P_x_BD1,4)
Apprx_P_X_BD1
e.f1=N*apprx_p_x_bd1
e.f1
E.F1=N*Apprx_P_X_BD1
E.F1
Apprx_E.F1=round(E.F1)
Apprx_E.F1
E.F_table1=data.frame(x, f, p_x_bd1, Apprx_P_X_BD1, e.f1, Apprx_E.F1)
E.F_table1
par(mfrow=c(2,1))
plot(x, apprx_p_x_bd1,type = "o",main="Case1: Graph of fitted binomial distribution", xlab = "Random variable values", ylab = "The fitted probability values", lwd=2,col="red")
xbar=sum(x*f)/sum(f)
xbar
p_cal=round(xbar/n,4)
p_cal
q_cal=1-p_cal
q_cal
p_x_bd2=choose(n,x)*p_cal^x*q_cal^(n-x)
p_x_bd2
apprx_p_x_bd2=round(p_x_bd2,4)
apprx_p_x_bd2
P_x_BD2=cbind(dbinom(x,n,p_cal))
P_x_BD2
Apprx_P_X_BD2=round(P_x_BD2,4)
Apprx_P_X_BD2
e.f2=N*apprx_p_x_bd2
e.f2
E.F2=N*Apprx_P_X_BD2
E.F2
Apprx_E.F2=round(E.F2)
Apprx_E.F2
E.F_table2=data.frame(x, f, p_x_bd2, Apprx_P_X_BD2, e.f2, Apprx_E.F2)
E.F_table2
plot(x, p_x_bd2, type ="o", main="Case2: Graph of fitted binomial distribution", xlab = "Random variable values", ylab ="The fitted probability values", lwd=2,col="red")