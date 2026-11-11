library(wooldridge)
data('ceosal1')
reg <- lm(log(salary) ~ roe, data = ceosal1)
b1 <- coef(reg)[2]
b1
b1*9
x <- c(1,3,4,5,9)
sd(x)
data('bwght')
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
b1 <- coef(reg)[2]
b1*15

#q6 
SSTx <- (19-1)*0.6^2
se <- sqrt(6.2^2/SSTx)
se

#q8 
-3 +2.8*11 + 0.1 *8

#q9
2.5*6 -0.9 * 3

reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
b3 <- reg$coefficients[4]
b2* 10

reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
b3 <- reg$coefficients[4]
yhat_log <- b0 + b1*16 + b2*5 + b3 * 1
exp(yhat_log)


-1.1*6.1 + 1.4 * 14.9
14.15 + 8.9

#Formula for MLR slope ,omitted bias variable
B1 =  b1 - B2*sigma
0.67 - (-1.43)*(-0.95)

#MLR of the omitted variable
data('hprice1')
reg <- lm(price ~ bdrms, data = hprice1)
MLR <- lm(price ~ bdrms + sqrft, data = hprice1)
MLRsqrft <- lm(sqrft ~ bdrms, data = hprice1)
b1<- MLR$coefficients[3]
sigma_hat <- MLRsqrft$coefficients[2]
b1*sigma_hat

#Find the standard error of regression sigma
df <- 32 - 2 - 1
sigma <- sqrt(1340/df)
sigma

#Find se(Bj)
Sigma_hat <- 7.9
sstj <- 357
Rj <- 0.27
Se <- Sigma_hat/ sqrt(sstj*(1-Rj))
Se

#degrees of freedom for the regression df = n - K - 1
#K = number of independent variables
reg <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
n <- nrow(hprice1)
K <- 3
df <- n - K - 1

#Standard error of the regression
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR / df)
sigma_hat

#find SST_j for Xj = bdrms
SST_j <- sum((hprice1$bdrms - mean(hprice1$bdrms))^2)

#find R2_j fpr Xj = bdrms
R2_j <- summary(lm(bdrms~sqrft + lotsize, data = hprice1))$r.squared
R2_j
#compute standard error for bdrms coefficients
se <- sigma_hat / sqrt(SST_j * (1 - R2_j))
se

                       
                       