
#factors
gender=smaple(c('M','F'),size=20,replace=T))
summary(gender)

genderF=factor(gender)
summary(genderF)
genderF

(likscale=sample(c('Ex','Good','Sat','Poor'),size=20,replace=T))
summary(likscale)
class(likscale)
likscaleF=factor(likscale)
summary(likscaleF)
class(likscaleF)
likscaleOF=factor(likscale,ordered = T,levels=c('Poor','Sat','Good','Ex'))
summary(likscaleOF)
likscaleOF
barplot(table(likscaleF), col=1:4)
barplot(table(likscaleOF),col=1:4)


