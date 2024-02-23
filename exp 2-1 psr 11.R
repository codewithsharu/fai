n=6
n
p=75/100
p
q=1-p
q
x=3
x
PBD1=pbinom(q=x,size=n,prob=p,lower.tail=TRUE,log.p=F)
PBD1
x=4
x
PBD2=dbinom(x=x,size=n,prob=p,log=F)
PBD2
PBD3=pbinom(q=3, size=n, prob=p, lower.tail=FALSE, log.p=F)
PBD3
x=4
x
PBD4=pbinom(q=x, size=n, prob=p, lower.tail=TRUE, log.p=F)
PBD4
x1=4
x1
x2=6
x2
PBD5=sum(dbinom(x=c(x1:x2), size=n, prob=p, log=F))
PBD5
PBD_5=pbinom(q=6,size=n,prob=p,lower.tail=TRUE,log.p=F)-pbinom(q=3,size=n,prob=p,log.p=F)
PBD_5
x1=4
x1
PBD6=pbinom(q=x1, size=n, prob=p, lower.tail=FALSE, log.p=F)
PBD6
PBD7=sum(dbinom(x=c(2:5), size=n, prob=p,log=F))
PBD7
PBD_7=pbinom(q=5, size=n, prob=p, lower.tail=TRUE, log.p=F)-pbinom(q=1, size=n, prob=p, lower.tail=TRUE,log.p=F)
PBD_7
x=qbinom(p=0.46, size=6, prob=0.75, lower.tail=TRUE, log.p=F)
x=4
GRN=rbinom(n=6, size=75, prob=0.75)
GRN