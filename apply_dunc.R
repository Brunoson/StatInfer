samples = sapply(1:1000,function(k){sample(x=dist,size=100)})
samples

gen = function(x){seq(1,10,length.out=3)}
apply(1:3,gen)
sapply(1:3,gen)
tapply(1:3,gen) #Error
