#How many CEO's
library(wooldridge)
data("ceosal1")
nrow(ceosal1)

#sample mean on return equity
mean(ceosal1$roe)

#sample correlation between salary and roe
cor(ceosal1$salary, ceosal1$roe)

#OLS slope for wage on tenure
model <- lm(wage ~ tenure, data = wage1)
coef(model)
coef(model)["tenure"]

#predicted hourly wage with 9 years of tenure
model <- lm(wage ~ tenure, data = wage1)
predict(model, newdata = data.frame(tenure = 9))

#change in predicted wage ffrom 4 to 11 years
wage4 <- predict(model, newdata = data.frame(tenure = 4))
wage11 <- predict(model, newdata = data.frame(tenure = 11))
round(wage11 - wage4,2)

#percentage of wage variation explained by tenure
model <- lm(wage ~ tenure, data = wage1)
summary(model)$r.squared * 100

#OLS residual for the worker in row 2
actual <- wage1$wage[2]
predicted <- predict(model)[2]
actual - predicted

#explained sum of squares
data("bwght")
model <- lm(bwght ~ faminc, data = bwght)
SSE <- sum((fitted(model)-mean(bwght$bwght))^2)
SSE

#change in predicted birth weight when family income rises by 5
model <- lm(bwght ~ faminc, data = bwght)
coef(model)["faminc"]*5
