p=0.05 
p 
n=200 
n 
N=1000 
N 
lambda=n*p 
lambda 
x=1 
x 
PPD1=ppois(q=x, lambda, lower.tail=F, log.p=F) 
PPD1 
Apprx_PPD1=round(PPD1,4) 
Apprx_PPD1 
EF1=N*Apprx_PPD1 
EF1 
PPD2=dpois(x=2, lambda, log=F) 
PPD2 
Apprx_PPD2=round(PPD2,4) 
Apprx_PPD2 
EF2=N*Apprx_PPD2 
EF2 
PPD3=ppois(q=2, lambda, lower.tail=T, log.p=F) 
PPD3 
Appx_PPD3=round(PPD3,4) 
Appx_PPD3 
EF3=N*Appx_PPD3 
EF3 
PPD4=ppois(q=1, lambda, lower.tail=T, log.p=F) 
PPD4 
Apprx_PPD4=round(PPD4,4) 
Apprx_PPD4 
EF4=N*Apprx_PPD4 
EF4 
PPD5=ppois(q=2, lambda, lower.tail=F, log.p=F) 
PPD5 
Apprx_PPD5=round(PPD5,4) 
Apprx_PPD5 
EF5=N*Apprx_PPD5 
EF5 
PPD6=sum(dpois(x=c(2:4),lambda,log=F)) 
PPD6 
PPD_6=ppois(q=4,lambda,lower.tail=T, log.p=F)-ppois(q=1,lambda,lower.tail=T, log.p=F) 
PPD_6 
Apprx_PPD6=round(PPD6,4) 
Apprx_PPD6 
EF6=N*Apprx_PPD6 
EF6 
PPD7=sum(dpois(x=c(3:10),lambda,log=F)) 
PPD7 
PPD_7=ppois(q=9,lambda,lower.tail=T, log.p=F)-ppois(q=2,lambda,lower.tail=T, log.p=F) 
PPD_7 
Apprx_PPD7=round(PPD7,4) 
Apprx_PPD7 
EF7=N* Apprx_PPD7 
EF7 
x=qpois(p=0.6, lambda, lower.tail=T) 
x 
rn=rpois(n=5, lambda=4) 
rn