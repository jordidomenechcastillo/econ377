library(swirl)
swirl()
domenechj
1
5
#create vector c(44, NA, 5, NA) and name it as a variable x
x <- c(44, NA, 5, NA)
#multiply it by 3
x * 3
#create a vector that has 1000 draws, that being y <- rnorm(1000)
y <- rnorm(1000)
#now one with 1000 NAs, that being z <- rep(NA, 1000)
z <- rep(NA,1000)
#combine elements now from y and z. That being my_data <- sample(c(y, z),100)
my_data <- sample(c(y, z),100)
#us is.na to find where the NA is located. Call that function on my_data and name it my_na
my_na <- is.na(my_data)
print(my_na)
#type my_na to view all the contents.
my_na
#use '==' to test for equality between two objects. Try for my data == NA yields the same as is.na()
my_data == NA
#Call the sum() function on my_na to count total numbers of TRUEs in my_na, and total number of NAs in my_ data.
sum(my_na)
#to make sure this is right, use Print my_data
my_data
#to find NaN, divide 0 by 0.
0/0
#subtract Inf from Inf and see what happens
Inf - Inf
#it gives you NaN