x=c(1,2,3,4,5,6)
x
p_of_x=c(1/36,3/36,5/36,7/36,9/36,11/36)
p_of_x
F_of_x=cumsum(p_of_x)
F_of_x
disttable1=rbind(x,p_of_x,F_of_x)
disttable1a
Aprx_distrtable1=round(disttable1,4)
Aprx_distrtable1
disttable2=cbind(x,p_of_x,F_of_x)
disttable2
Aprx_distrtable2=round(disttable2,4)
Aprx_distrtable2
P25=sum(p_of_x[which(x>2&x<5)])
P25
P3= sum(p_of_x[which(x>3)])
P3
P4=sum(p_of_x[which(x<4)])
P4
P_4=sum(p_of_x[which(x<=4)])
P_4
P_3= sum(p_of_x[which(x>=3)])
P_3
P_25=sum(p_of_x[which(x>=2 & x<=5)])
P_25
P2_5= sum(p_of_x[which(x>=2 & x<5)])
P2_5
P.25= sum(p_of_x[which(x>2 & x<=5)])
P.25
Mean_of_x=sum(x*p_of_x)
Mean_of_x
Mean_of_x=weighted.mean(x,p_of_x)
Mean_of_x
Mean_square_of_x=sum(x^2*p_of_x)
Mean_square_of_x
Mean_square_of_x= weighted.mean(x^2,p_of_x)
Mean_square_of_x
Variance_of_x= sum(x^2*p_of_x)-sum(x*p_of_x)^2
Variance_of_x
Standard_deviation_of_x=sqrt(Variance_of_x)
Standard_deviation_of_x
par(mfrow=c(1,2))
pmf=plot(x,p_of_x,type="h" ,col="red",main="the graph of pmf p(x)", xlab="X-values",ylab="pmf p(x)-values", 
         lwd=3)
points(p_of_x, col=5,pch=20)
lines(p_of_x,col=6,lty=2)
cdf=plot(x,F_of_x, type="s" ,col="red",main="the graph of cdf F(x)", xlab="X-values",ylab="cdf F(x)-
values",lwd=3)
points(F_of_x, col=3,pch=20)
lines(F_of_x,col=5,lty=1)