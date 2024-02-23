x=c(0,1,2,3,4,5)
x
f=c(142,156,69,27,5,1)
f
N=sum(f)
N
n=5
n
Lambda=sum(x*f)/sum(f)
Lambda
p_x_pd=cbind(((exp(-Lambda))*Lambda^x)/factorial(x))
p_x_pd
Apprx_p_x_pd=round(p_x_pd, 4)
Apprx_p_x_pd
P_x_PD=cbind(dpois(x, lambda=Lambda,log=F))
P_x_PD
Apprx_P_X_PD=round(P_x_PD,4)
Apprx_P_X_PD
e.f=N* p_x_pd
e.f
E.F=N* P_x_PD
E.F
Apprx_E.F=round(E.F)
Apprx_E.F
E.F_table=data.frame(x, f, p_x_pd, Apprx_P_X_PD, e.f, Apprx_E.F)
E.F_table
plot(x, p_x_pd, type ="o",main="Case2: Graph of fitted Poisson distribution",xlab = "Random variable 
values",ylab ="The fitted probability values", lwd=2,col="red")