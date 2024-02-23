N=300
N
Mean=68
Mean
Sd=3
Sd
Px72=pnorm(q=72,mean=Mean,sd=Sd,lower.tail=F)
Px72
Apprx_no_of_students1=round(N*Px72)
Apprx_no_of_students1
lower_bound= Mean-3*Sd
lower_bound
upper_bound= Mean+3*Sd
upper_bound
x1=seq(from= lower_bound, to=upper_bound, by=0.1)
x1
y1=dnorm(x1, mean = Mean, sd = Sd)
y1
par(mfrow=c(1,3))
plot(x1, y1, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
     P(X>72)", lwd=3)
x1=seq(from=72, to=upper_bound, by=0.1)
y1=dnorm(x1, mean = Mean, sd = Sd)
polygon(c(72,x1,upper_bound),c(0,y1,0),col="blue")
abline(v=72, col="red")
Px_72=pnorm(q=72,mean=Mean,sd=Sd,lower.tail=T)
Px_72
Apprx_no_of_students2=round(N*Px_72)
Apprx_no_of_students2
x2=seq(from= lower_bound, to=upper_bound, by=0.1)
x2
y2=dnorm(x2, mean = Mean, sd = Sd)
y2
plot(x2, y2, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
     P(X<=72)", lwd=3)
x2=seq(from=lower_bound, to=72, by=0.1)
y2=dnorm(x2, mean = Mean, sd = Sd)
polygon(c(lower_bound,x2,72),c(0,y2,0),col="blue")
abline(v=72, col="red")
Px_65_71=pnorm(q=71,mean=Mean,sd=Sd,lower.tail=T)- pnorm(q=65,mean=Mean,sd=Sd,lower.tail=T)
Px_65_71
Apprx_no_of_students3=round(N*Px_65_71)
Apprx_no_of_students3
x3=seq(from=lower_bound, to=upper_bound, by=0.1)
x3
y3=dnorm(x3, mean = Mean, sd = Sd)
y3
plot(x3, y3, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of 
     P(65<X<71)")

x3=seq(from=65, to= 71, by=0.1)
y3=dnorm(x3, mean = Mean, sd = Sd)
polygon(c(65,x3,71),c(0,y3,0),col="blue")
abline(v=c(65,71), col="red")
cat("Approximate number of students have masses containing:\n")
cat("(i) greater than 72kgs:", round(Apprx_no_of_students1), "\n")
cat("(ii) less than or equal to72 kgs:", round(Apprx_no_of_students2), "\n")
cat("(iii) between 65 and 71 kgs:", round(Apprx_no_of_students3), "\n")