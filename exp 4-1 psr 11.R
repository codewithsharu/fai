
Mean=20
Mean
Var=4
Var
Sd=sqrt(Var)
Sd
x1=18
x1
P_x_ND1=pnorm(q=x1, mean=Mean, sd=Sd, lower.tail=TRUE, log.p=F)
P_x_ND1

lower_bound= Mean-3*Sd
lower_bound
upper_bound= Mean+3*Sd
upper_bound
x1=seq(from= lower_bound, to=upper_bound, by=0.1)
x1
y1=dnorm(x1, mean = Mean, sd = Sd)
y1
par(mfrow=c(2,2))
plot(x1, y1, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
P(X<18)", lwd=3)

x1=seq(from= lower_bound, to=18, by=0.1)
y1=dnorm(x1, mean = Mean, sd = Sd)
polygon(c(lower_bound,x1,18),c(0,y1,0),col="blue")
abline(v=18, col="red")
X=18
X
P_x_ND2=dnorm(x=X, mean=Mean, sd=Sd)
P_x_ND2

x2=seq(from= lower_bound, to= upper_bound, by=0.1)
x2
y2=dnorm(x2, mean = Mean, sd = Sd)
y2
plot(x2, y2, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
P(X=18)")

x2=seq(from= lower_bound, to=18, by=0.1)
y2=dnorm(x2, mean = Mean, sd = Sd)
polygon(c(lower_bound,x2,18),c(0,y2,0),col="blue")
abline(v=18, col="red")
x2=22
x2
P_x_ND3=pnorm(q=x2, mean=Mean, sd=Sd, lower.tail=FALSE, log.p=F)
P_x_ND3

x3=seq(from= lower_bound, to= upper_bound, by=0.1)
x3
y3=dnorm(x3, mean = Mean, sd = Sd)
y3
plot(x3, y3, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
P(X>22)")


x3=seq(from=22, to= upper_bound, by=0.1)
y3=dnorm(x3, mean = Mean, sd = Sd)
polygon(c(22,x3, upper_bound),c(0,y3,0),col="blue")
abline(v=22, col="red")
x3=18
x3
x4=22
x4
P_x_ND4=pnorm(q=x4,mean=Mean,sd=Sd, lower.tail=T)-pnorm(q=x3,mean=Mean, sd=Sd,lower.tail=T)
P_x_ND4

x4=seq(from= lower_bound, to= upper_bound, by=0.1)
x4
y4=dnorm(x4, mean = Mean, sd = Sd)
y4
plot(x4, y4, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
P(18<X<22)")

x4=seq(from=18, to= 22, by=0.1)
y4=dnorm(x4, mean = Mean, sd = Sd)
polygon(c(18,x4,22),c(0,y4,0),col="blue")
abline(v=c(18,22), col="red")
P=0.9
P
x=qnorm(p=P, mean=Mean, sd=Sd, lower.tail=T)
x
N=10
N
RN= rnorm(n=N, mean=Mean, sd=Sd)
RN