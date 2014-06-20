set.seed(1111)
opts_chunk$set(cache.extra = list(R.version, sessionInfo(), format(Sys.Date(), '%Y-%m')))
#Collecting large case from a distribution with mean muy, n times
#for each time we have random variable Xi, then
#expected value of avg of Xi is muy 
dist1 = rnorm(100000,mean=10,sd=2)
dist2 = rnorm(100000,mean=10,sd=2)
dist3 = rnorm(100000,mean=10,sd=2)
m1 = mean(dist1)
m2 = mean(dist2)
m3 = mean(dist3)
mean(1/3 * (dist1+dist2+dist3)) #Expected <> equal, expect is JUST expect

samples = sapply(1:100000,function(dumpb){rnorm(100,mean=10,sd=2)})
means = apply(samples,1,mean)
var(means) - 2^2/100000
