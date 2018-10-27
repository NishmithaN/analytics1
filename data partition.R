#create vector of student names: divide into 2 groups
studentname=paste('student','1:10000',sep='_')
#group=60% group2=40%
xy=studentname
legnth(xy)
(index=sample(length(x),size=.6*length(xy)))
length(index)
train1=x[index]
test1=x[-index]
train1
test1
?sample

#create a large df
sname=paste('S',1:1000,sep='_')
gender=sample(x=c('male','female'), size=1000,prob=c(.6,.4),replace=T)
marks=ceiling(rnorm(1000,60,10))
df=data.frame(sname,gender,marks)
head(df)
table(df$gender)
length(df); nrow(df)
# split DF in to 2 parts 70% and 30% 
#train -70% of DF ;test -30% of df
index2=sample(x=nrow(df), size=.7*nrow(df)) #nrow gives length for data frame 
index2
length(index2)
df[1:5,] ; df[c(1,5,7)]
train2=df[index2,]
nrow(train2)
test2=df[-index2,]
nrow(test2)

#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender, p=0.7,list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender))
prop.table(t3a)
(t3b=table(test3$gender)); prop.table(t3b)
#propotion of am is almost same in both the samples

