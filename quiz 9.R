# Question 14: Rescaling x (divide x by 1000)
beta1_old <- 0.59
k <- 1000              # divisor of x

beta1_new <- beta1_old * k
beta1_new

#Question 17: Log-Level Regression
beta1 <- 0.07      # slope
delta_x <- 3       # change in x

percent_change_y <- 100 * beta1 * delta_x
percent_change_y

# Question 19: Level-Log Regression
beta1 <- 16.1          # slope on log(x)
percent_change_x <- 4  # percent change in x

delta_y <- (beta1 / 100) * percent_change_x
delta_y

# Question 5: Log-Log Regression
beta1 <- 1.24          # elasticity
percent_change_x <- -6 # x falls by 6%

percent_change_y <- beta1 * percent_change_x
percent_change_y

# Question 6: Log-Level Regression using ceosal1
# Load the dataset (Wooldridge package)
library(wooldridge)
data("ceosal1")
# Run the regression
model <- lm(log(salary) ~ roe, data = ceosal1)
# Extract the unrounded slope
beta1 <- coef(model)["roe"]
beta1
# Compute percent change in predicted salary when roe rises by 5 points
delta_roe <- 5
percent_change_salary <- 100 * beta1 * delta_roe
percent_change_salary

# Question 14: Standard Deviation of the Slope Estimator
x <- c(2, 3, 6, 8, 9)
sigma <- 5

SSTx <- sum((x - mean(x))^2)
sd_beta1 <- sigma / sqrt(SSTx)

sd_beta1


# Question 15: Estimate of the Error Variance
n <- 17
SSR <- 53
sigma_squared <- SSR / (n - 2)
round(sigma_squared, 2)

# Question 16: Standard Error of the Slope Estimator
n <- 10
SSR <- 804
SSTx <- 28
sigma_hat <- sqrt(SSR / (n - 2))
se_beta1 <- sigma_hat / sqrt(SSTx)
se_beta1

#question 1 ^b1 does not change; only ^b0 changes
#question 9 the workers ability, whihc raises wages and tends to be higher for people with more education
#question 13 More spread-out values of X (larger SSTx)