#OLS RESIDUALS
#Regress y on x and find residual of the fourth observation
x <- c(2,3,5,7,8)
y <- c(3,6,5,9,12)
#run the regression
model <- lm(y ~ x)
#view the coefficients
coef(model)
yhat4 <- predict(model)[4]
u4 <- y[4] - yhat4
u4

#find the missing residual
#OLS residuals sum to zero
res <- c(1.4,-0.6,-2.3,0.09,1.1)
#compute the missing residual
missing_res <- -sum(res)
missing_res

#Compute Exiui
x <- c(2,3,5,7,8)
y <- c(3,6,5,9,12)
#Run OLS
model <- lm(y ~ x)
uhat <- residuals(model)
#compute sum(x*u)
sum(x*uhat)
