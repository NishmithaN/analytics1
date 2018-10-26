#Data structure

x=1:10
x
x1<- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]

(l = c('a',"Dhiraj","4"))
class(l)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
class(x5)
x5a = c(3,5)
class(x5a)
(x5b = c(1, 'a',T, 4L))
class(x5b)

#access elements
(x6 = seq(0,100,by=3))
ls()  #variables in my environment
x6
length(x6)
x6[20]
x6[3]  # access 3rd element
#[1] 4
plot(1:10)
?iris

#modify 
(x6= sample(1:100))
sort(x6)
sort(x[-c(1,2)])
sort(x6)decreasing = x[x==100]

#matrix
m1= matrix(1:24,nrow=6)
class(m1)
summary(m1)
dim(m1)
str(m1)

# access elements of matrix
m1
m1[,1]
m1[1,]
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]
#names of cols and rows
m1

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C',1:3, sep=''))

m1
attributes(m1)

m1
colsums(m1); rowsum(m1)
colMeans(m1); rowMeans(m1)
attributes(m1)
dim(m1)

#addmargins
m1
?addmargins
addmargins(m1,margin=1,sum) #colwise function
rbind(m1,colSums(m1))
round(addmargins(m1,1,sd),2) #colwise function

addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2),mean) #row & col wise function

addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd))) #row & col wise function

#DataFrame----
#create Vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender; marks ; marks2; course

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows


trunc(8.6)
floor(3.4)
floor()
floor(3.7)
ceiling(3.4)


(x=rnorm(100,mean=60,sd=10))
plot(density(x))
abline(v=60,col='red')

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)


df1  #full data
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)  # names of columns
dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))

#data analysis using package 

df1
library(dplyr)
#install.package(dplr)

df1 %>%group_by(gender) %>% summarise(mean(marks), mean(marks2))
df1 %>%group_by(gender) %>% summarise(max(marks), min(marks2))
df1 %>%group_by(course,gender) %>% count

