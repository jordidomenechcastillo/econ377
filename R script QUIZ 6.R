#to find the OLS slope of beta 1 = E(Xi-X)(Yi - Y)/E(Xi - X)^2
x <- c(5, 2, 7)
y <- c(6,11,10)
model <- lm(y ~ x)
coef(model)

#To find the OLS intercept beta 0 = Y - B1X
n <- c(3,8,4)
s <- c(9,0,2)
model1 <- lm(s ~ n)
coef(model1)

#to fit the OLS line y = B0 + B1 and predict y at x = 6
z <- c(2,4,8)
a <- c(11,4,0)
model2 <- lm(a ~ z)
predict(model2, newdata = data.frame( z = 6))

#to find a fitted line that is y = 3 + 3/10x. Find the fitted value y at x = 13
3 + (3/10)*13

#to find a fitted line that is y = 3 + 2/10x. A person has x = 13 and actual y = 8. Find the residual u = y - y
e <- 13
t <- 6
yhat <- 3 + (2/10)*e
residual <- t - yhat
round(residual,2)

#to find a fitted slop is b1 = 4/10 Using Ay = B1Ax, find the predicted change in y when x rises by 4
beta1 <- 4/10
dx <- 4
dy <- beta1 * dx
dy

# for the fitted line y = 1 + 5/10x and the three points (8,12),(10,4),(4,7), find SSR.
q <- c(8,10,4)
a <- c(12,4,7)
yhat1 <- 1 + (5/10) * q
SSR <
SSR - sum((a - yhat1)^2)

# A regression has SST = 208 and SSR1 = 106. Find the explained sum of squares SSE
SST <- 208
SSR1 <- 106
SSE <- SST - SSR1
SSE

# A regression has SST1 = 373 and SSR2 = 57. Find R^2.
SST1 <- 373
SSR2 <- 57
SSE4 <- SST1 - SSR2
R2 <- SSE4 / SST1
round(R2,2)

#A regression has SSE1 = 95 and SST2 = 310. Find R^2
SSE1<- 95
SST2 <- 310
R3 <- SSE1 / SST2
round(R3, 2)

#A regression has SST3 = 239 and SSR3 = 111. What fraction of the variation Y is UNEXPLAINED
SST3 <- 239
SSR3 <- 111
SSE2 <- SST3 - SSR3
unexplained <- SSR3 / SST3
round(unexplained,2)

#A regression has SST4 = 352 and R^2 = 12/100.Find SSR4
SST4 <- 352
R4 <- 12/100
SSE3 <- R4 * SST4
SSR4 <- SST4 - SSE3
round(SSR4, 2)
