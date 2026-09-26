library(swirl)
swirl()
domenechj
1
3
1
6
x
#to view the first elements of x try x[x:10]
x[1:10]
1
#to the vector of all NAa type x[is.na(x)]
x[is.na(x)]
#to create a vector called y that contains all of the non-NA values from x, use y<- x[!is.na(x)]
y<- x[!is.na(x)]
print(y)
#type y to see the contents
y
5
y[y > 0]
x[x > 0]
#Combining what we know about subsetting and local operator, type -- x[!is.na(x) & x > 0]
-- x[!is.na(x) & x > 0]
x[!is.na(x) & x > 0]
x [c(3,5,7)]
#see what happens when we ask for the zeroth element of x
x [0]
x[3000]
x[c(-2,-10)]
#type x[-c(2,10)] to get exam same result.
x[-c(2,10)]
#create a numeric vector with three named elements typing vect <- c(foo = 11, bar = 2, norf = NA)
vect <- c(foo = 11, bar = 2, norf = NA)
# print vect to console to see each element has a name
print(vect)
vect
names(vect)
#create an unnamed vector vect2 with c(11, 2, NA)
vect2 <- c(11, 2, NA)
names(vect2)
#add names to vect2 typing names(vect2) <- c("foo", "bar", "norf")
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
1
#type vect["bar"] to see the element named "bar"
vect["bar"]
vect[c("foo", "bar")]
1
