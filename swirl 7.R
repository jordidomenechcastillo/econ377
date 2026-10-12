library (wooldridge)
library (swirl)
swirl()
domenechj
1
7
my_vector <- 1:20
my_vector
#to see the dimensions of an object we use the dim() function
dim(my_vector)
#to find its length we use the length() function
length(my_vector)
#see what happens if we put dim(my_vector) <- c(4,5).
dim(my_vector) <- c(4,5)       
dim(my_vector)
#another way to do it is by calling the attributes() function on my_vector
attributes(my_vector)
#see the contents of my_vector
my_vector
#confirm it's a matrix by using the class() function
class(my_vector)
#store the value of my_vector in a variable called my_matrix
my_matrix <- my_vector
#bring up the help file for the matrix() function by using '?'
?matrix
#create a matrix containing the same numbers and dimensions typing my_matrix <- matrix(1:20,4,5) 
my_matrix2 <- matrix(1:20,4,5)
#to check if the matrix are identical, use identical() function and compare the two matrix
identical(my_matrix, my_matrix2)
#Create a vector called patients with the name of the patients
patients <-c("Bill", "Gina", "Kelly", "Sean")
#type cbind(patients,my_matrix) to add the names to the matrix
cbind(patients, my_matrix)
my_matrix
#to include the names of our patients in the table without destroying the numeric data. Try -- my_data <- data.frame(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
#confirm this by typing the class() function
class(my_data)
#create a vector containing one element for each column. Character vector called cnames that contains these elements, same order: "patient", "age", "weight", "bp", "rating", "test".
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
#use colnames() functions to set the 'colnames' for the data frame.
colnames(my_data) <- cnames
#print my_data to see if it's right.
my_data
1
