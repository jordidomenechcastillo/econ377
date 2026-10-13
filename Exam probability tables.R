#Probabilty tables
#Find Cor(X,Y)
#copy the x values in a vector and then the Y values
x <- c(1,2,4,5)
y <- c(2,6,3,7)
p <- c(0.2,0.3,0.4,0.1)
#do E[X], and E[Y]
EX <- sum(x*p)
EY <- sum(y*p)
EXY <- sum(x*y*p)
#do the covariance of XY
CovXY <- EXY - EX*EY
VarX <- sum((x^2)*p) - EX^2
VarY <- sum((y^2)*p) - EY^2
CorrXY <- CovXY/(sqrt(VarX)*sqrt(VarY))
CorrXY

#conditional expectation and variance
#Values of Y and probabilities
y <- c(4,10,16)
p <- c(0.25,0.50,0.25)
#for E[Y|X=x]
EY <- sum(y*p)
#for E[3Y-2|X=x]
result_a <- 3*EY - 2
#for E[Y^2|X=x]
EY2 <- sum((y^2)*p)
VarY <- EY2 - EY^2
VarY
