#1.  E[X] = 2 and E[X2] = 20. Find the standard deviation of 3x - 7
EX <- 2
EX2 <- 20
#compute var of X
VarX <- EX2 - EX^2
#compute for var(3x - 7)
Var_new <- 3^2 * VarX
#now do the standard deviation
SD_new <- sqrt(Var_new)
SD_new


#2.  Var(X) = 5, Var(Y) = 8, Cov (X,Y) = -2. Find Var(3X-2Y)
VarX <- 5
VarY <- 8
CovXY <- -2
#Compute the variance
Var_result <- (3^2)*VarX + ((-2)^2)*VarY + 2*(3)*(-2)*CovXY
Var_result