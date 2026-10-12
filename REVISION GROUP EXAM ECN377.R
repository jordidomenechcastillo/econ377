#find the sd of 3X - 7 Group A question 1
Ex <- 2
Ex2 <- 20

varx <- Ex2 - Ex^2

sqrt(3^2*varx)

#Group B question 2 A
y <- c(4,10,16)
p <- c(0.25,0.5,0.25)

EY <- sum(y*p)
EY

3*EY-2

#Group C question 
x <- c(2,3,5,7,9)
y <- c(3,6,5,9,12)
covxy <- cov(x,y)
varx <- var(x)
b1 <- covxy/varx

ybar <- mean(y)
xbar <- mean(x)
b0 <- ybar-b1*xbar

y_hat <- b0 + b1 * 7
9 - y_hat

#Group D question 2
SST <- (31-1) * 9
SSR <- 189
R2 <- 1 - SSR / SST

#Group E  question 2
data("ceosal1")
reg2 <- lm(salary ~ roe, data = ceosal1)
SSR <- sum(reg2$residuals^2)
SST <- sum((ceosal1$salary - mean (ceosal1$salary))^2)
SSE <- SST - SSR
R_squared <- summary(reg2)$r.squared
R_squared * 100
R_squared 

#Group F Question 2
#For OLS use line C and the residuals squared

#GROUP G
1.5 * 4 - 0.8 * -3
