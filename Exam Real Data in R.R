#Real Data in R
library(wooldridge)
#load the data
data("wage1")
#wage1
#Run regression
model <- lm(wage ~ tenure, data = wage1)
#view residual for row 6
residuals(model)[6]
#ceosal1
data("ceosal1")
#run the regression
model <- lm(salary ~ roe, data = ceosal1)
#explained sum of squares (SSE)
SSE <- sum((fitted(model) - mean(ceosal1$salary))^2)
#R-squared
R2 <- summary(model)$r.squared
SSE
R2
