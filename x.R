#Multiple Linear Regression : DV vs more than 1 IVs

#sales Qty vs price & promotion

#Predict Sales Qty from Price and Promotion of the Product





#Omni Store

#creating data using Vector

sales= c(4141,3842,3056,3519,4226, 4630,3507,3754, 5000,5120,4011, 5015,1916,675, 3636,3224,2295, 2730,2618,4421, 4113,3746, 3532, 3825,1096, 761,2088,820,2114, 1882,2159,1602,3354,2927)

price = c(59,59,59,59,59,59,59,59,59,59,59,59, 79,79,79,79,79,79,79,79,79, 79,79,79,99,99, 99,99,99,99,99,99,99,99)

promotion= c(200,200,200,200,400,400,400,400, 600,600,600,600,200,200,200,200, 400,400,400,400,600,600,600,600, 200,200,200,200,400,400,400,400,600,600)

#Create a DF from 3 variables

omni1 = data.frame(sales,price,promotion)

head(omni1)

#omni2 = read.csv(file.choose())
omin2a=read.csv('./data/salesqty.csv')
headA(omni2a)
omni2b=read.csv(file.choose())
head(omni2b)

