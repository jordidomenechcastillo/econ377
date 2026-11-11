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
