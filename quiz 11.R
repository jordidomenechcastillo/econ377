#q1 log= 1.6 +0.084x1 - 0.0112
#Percent Change in Predicted y (Log-Level Model)
100 * (0.084*2 + (-0.011)*1)

#q2
#Percent Change in Wage from Experience by 2 and Tenure by 1
library(wooldridge)
data('wage1')
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
100 * (b["exper"]*2 + b["tenure"]*1)
#or
b <- reg$coefficients
100 * (b[3]*2 + b[4]*1)

#q3 predicted hourly wage, in dollars, 12 years of education 10 exper and 3 of tenure
b <- reg$coefficients
pred_wage <- exp(b[1] + b[2]*12 + b[3]*10 + b[4]*3)
pred_wage

#q4 OLS multiple regression, and residuals U = Yi - Yi,
#The regression passes through the point of sample means.
#The sample covariance between each XjX_jXj​ and the residuals is 0.
#The sample average of the residuals is 0.

#q6 multiple regression gives y = 4.1 + 1.7x1 - 2.1x2. X1 = 11.8 x2=7.1
4.1 + 1.7*11.8 - 2.1*7.1

#q7 which one violates MLR than OLS cannot estimate?
#(don"t select)wage on educ and exper (both vary)
#(don't select)colGPA on ACT and hsGPA (correlated, but not perfectly correlated)

#q9 MLR4 E[U] = 0 SO x variables are endogenous.
#A variable that affects Y and is correlated with X1 is left out of the regression.

#q11 B1= B1 + B2O1. B1 = -0.54 B2 = -.79 change is 0.39
-0.54 - 0.79*0.39

#q14 cigarettes the mother smoked per day during pregnancy
# Multiple regression (from previous question)
data('bwght')
m1 <- lm(bwght ~ cigs + faminc, data = bwght)
coef(m1)
# Get β̂2 (faminc coefficient)
b2 <- coef(m1)["faminc"]
# Regress faminc on cigs to get δ̂1
m2 <- lm(faminc ~ cigs, data = bwght)
coef(m2)
# Get δ̂1 (cigs coefficient)
d1 <- coef(m2)["cigs"]
# Compute β̂2 * δ̂1
b2 * d1

#q16 simple-regression slope on x1 is:
#biased upward

#q17 simple-regression fertilizer slope most likely: sign of land quality's effect on yield (B2)
#overstates the effect of fertilizer (upward bias)


