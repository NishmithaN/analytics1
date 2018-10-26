#analysis of dataset mtcars using dplyr

library(dplyr)
?mtcars
#structure of data set
str(mtcars) #structure
dim(mtcars):colnames(mtcars) #dimensions
names(mtcars) #column names
rownames(mtcars) # rownames
summary(mtcars) #summary of dataset

#summary activities on mtcars
t1=table(mtcars$am)
pie(t1)
19/32=360
pie(t2, labels=c('auto','manual'))
(t2=table(mtcars$gear))
pie(t2,labels = c('3 gear','4 gear','5 gear'))
barplot(t2)
barplot(t2,col=1:3)
barplot(t2,col=1:3,horiz = T)
barplot(t2,col=c('green','red','yellow'),xlab='gear', ylab='No of cars', ylim=c(0,20))
title(main='distribution of gears of cars',sub='no of gears')

#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))
#select for columns, slice for rows
mtcars %>% arrange(mpg) #ascending order of mileage 
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg) #ascending order of am, descending order of mpg 
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn, mpg)
#display rownames with mpg
mtcars %>% slice(c(1.5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11), size = 2)) %>% head

sample(x=1:11, size = 2)

mtcars %>% mutate(newmpg=mpg*1.1)
mutate(mtcars, newmpg= mpg*1.2)

#type of Tx, mean(mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg),MaxHP=max(hp), MinWT=min(wt))
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG=mean(mpg))

