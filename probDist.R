require(combinat)
#Prob dist
#Quiz 2
#Ques 1: Create table of prob and solves equaln -> prob
#Ques 2: Apply formulas ralated to sens, specs
#Ques 3: X = N(mean=80,sd=10), find P(X<=70)
round(pnorm(q=70,mean=80,sd=10))
#Ques 4: X = N(mean=1100,sd=75), find x that P(X<=x) = 0.95 ( or quantile 0.95)
round(qnorm(p=0.95,mean=1100,sd=75))
#Ques 5: Sample mean percentile X= N(mean=1100,sd=75), collects sample n=100, find x that,
#P(Xhat <= x) = 0.95
# => Xhat = N(mean=1100,sd=75/sqrt(n)) = N(1100,7.5)
round(qnorm(mean=1100,sd=7.5,p=0.95))
#Ques 6: Flip coins 5 times, find prob of getting 4 or 5 heads -- P(X>=4) -> bino dist
pbinom(q=3,size=5,prob=0.5,lower.tail=F)
#Ques 7: X = ?(mean=15,sd=10), sample n=100 >= 30 -> appx normal dist
# P (14<=X<=16)
p = pnorm(q=c(16,14),mean=15,sd=10/10)
p[1] - p[2]
#Ques 8:
#g: mean = (a+b)/2 = 0.5, var = 1/12*(b-a)^2 = 1/12
# => a  = 1 ; b = 0
mean(runif(1000,min=0,max=1))
#Ques 9: 
unif100mean <- function(unused){
  return(mean(runif(100,min=0,max=1)))
}
sd(sapply(1:1000,unif100mean))
#Ques 10: poisson dist
# lambda = mean*turn = 5*3
ppois(q=10,lambda=5*3)
#Ques 11:
choose(9,3)
