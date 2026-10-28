#q2 log-level regression, what percent does Y change
beta1 <- 0.06
dx <- -1

pct_change_y <- 100 * beta1 * dx
pct_change_y

#q3 log-log, perent change predicted birth weight change when rises by 20%
library(wooldridge)

data("bwght")

model <- lm(log(bwght) ~ log(faminc), data = bwght)
summary(model)

beta1 <- coef(model)[2]

pct_change_bwght <- beta1 * 20

pct_change_bwght


#q7 simple regression, find the standard error
n <- 9
sigma_hat <- 8.3
sx <- 1.2

SSTx <- (n - 1) * sx^2
se_beta1 <- sigma_hat / sqrt(SSTx)

round(se_beta1, 2)


#q9 SL1-SLR5, what would sd be if sample were 4 times as large?
# Original standard deviation
sd_beta1 <- 1.81

# Sample becomes 4 times larger
new_sd <- sd_beta1 / sqrt(4)

round(new_sd, 2)

#q12 multiple regression, find the predicted value y at x1 = 5 and x2 = 2
b0 <- 6
b1 <- 2.1
b2 <- 0.1

x1 <- 5
x2 <- 2

yhat <- b0 + b1*x1 + b2*x2

round(yhat, 2)

#q13 multiple regression. If x1 rises by 3 and x2 rises by 4?
b1 <- 2.1
b2 <- -2.6

dx1 <- 3
dx2 <- 4

dyhat <- b1*dx1 + b2*dx2

round(dyhat, 2)

#q14 predicted hourly wage of a worker with 14 years of education, 10 years of experience and 5 of tenure?
library(wooldridge)

data(wage1)

# Regression
reg <- lm(wage ~ educ + exper + tenure, data = wage1)

# View coefficients
coef(reg)

# Predicted wage for educ=14, exper=10, tenure=5
b <- coef(reg)

pred_wage <- b[1] + b[2]*14 + b[3]*10 + b[4]*5

round(pred_wage, 2)


#q15 by how much does the preducted hourly wage change when tenure rises by 3, using the same regression as before, tenure = 4th coefficient
library(wooldridge)

data(wage1)

reg <- lm(wage ~ educ + exper + tenure, data = wage1)

b <- coef(reg)

# tenure coefficient is the 4th coefficient
delta_wage <- b[4] * 3

round(delta_wage, 2)

#q1 12 + 8log(income) what 8 mean? 0.08 points in predicted score
#q4 1,000 different samples on b1? average of 1,000 is close to b1
#q6 SLR1-SLR5? todos menos larger true y larger sample