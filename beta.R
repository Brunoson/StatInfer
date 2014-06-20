#94% positive out of 85,193 reviews
#98% positive out of 20,785 reviews
#99% positive out of 840 reviews
pos = c(.94,.98,.99)
revs = c(85193,20785,840)
pos_revs = pos*revs
neg_revs = revs - pos_revs
lapply(seq_along(pos_revs),function(i){qbeta(c(.005,.995),pos_revs[i],neg_revs[i])})
#Because all three have high reviews, so set confident interval to 99%
#We can choose third one to have highest quality 97-99%