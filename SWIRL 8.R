library(swirl)
swirl()
domenechj
1
8
#to say that one value is equal to another use '=='
TRUE == TRUE
(FALSE == TRUE) == FALSE
#use it with numbers to compare them
6 == 7
#use '<' to say that one value is less than
6 < 7
#use '<=' to say that a value is less or equal to the other one
10 <= 10
1
4
#to say that a value is not equal to another we use '!='
5 != 7
#to negate a boolean operator you can put '!'.
!5 == 7
3
4
#the signs '&' and '&&', if the right and left operands of AND are both TRUE the entire expression is TRUE, otherwise is FALSE
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
1
3
#the function isTRUE() takes an argument, if the argument is TRUE, the function will return TRUE
isTRUE(6 > 4)
3
#the function identical() returns TRUE if the two values in the argument are identical
identical('twins','twins')
3
#the xor() function stands for exclusive or. If one argument evaluates to TRUE and one argument evaluates to FALSE.
xor(5 == 6, !FALSE)
1
ints <- sample(10)
ints
#'ints' is a random sampling of integers from 1 to 10. Type ints > 5, to get a logical vector corresponding to the elements of ints that are > 5
ints > 5
#use the which() function to find what indices are greater that 7 
which(ints > 7)
2
#any() and all() functions are the same case. The any() function will return TRUE if one or more of elements are TRUE. In the all() function it will return TRUE if every element is TRUE 
any(ints < 0 )
all(ints > 0)
4
1

