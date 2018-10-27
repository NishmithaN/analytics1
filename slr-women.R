#simple linear regression- women
#save slr-women

women
head(women)
names(women)
cov(women$height, women$weight)
cor(women$height, women$weight)
pairs(women)

fit1=lm(weight~height,data=women)#creating a model1
summary(fit1)#summary of the model
?lm

#Prediction : for height = 65, 66
range(women$height)
(new1 = data.frame(height=c(65,66,66.5)))
new1
(p1=predict(fit1, newdata = new1))
cbind(new1, p1)
#136.7333 140.1833



(new2 = data.frame(height=c(60,69)))

(p2=predict(fit1, newdata = new2))

cbind(new2, p2)



?predict

predict(fit1, newdata = new1, interval='confidence')

predict(fit1, newdata = new1, interval='prediction')



women

women$weight

fitted(fit1) # predicted values of all original Xs

predict(fit1, newdata = data.frame(women$height)) # same as above for single X



new3 = data.frame(women$height)  # DF using height of original data

cbind(women, fitted(fit1), residuals(fit1))  # compare women, predicted, errors

residuals(fit1)  # diff between actual and predicted values of weight

summary(fit1)

summary(residuals(fit1))



plot(fit1)

cor(fitted(fit1), women$weight)

summary(fit1)
