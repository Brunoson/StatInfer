a = c(1,2,3,4)
f = function(i){i}
l = list(a=1,b=2)
#apply(a,1,f) -- apply for matrix only
#tapply(a,f) -- matrix only
lapply(a,f) # work for list | vector
lapply(l,f)
sapply(c(4,4,4,4),f) #same as lapply but convert to matrix if possible, each result put in column
mt = matrix(data=c(1,2,3,4,5,6,7,8),nrow=2,ncol=4)
tapply(X=mt,FUN=f,INDEX=table(mt)) # Apply based on group describe in INDEX
apply(mt,1,f) # apply for each row, result put in column
apply(mt,2,f)# apply for each column, result put in column
