##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1 - swril lesson6
x<- rnorm(20)
#x
y<- rep(NA,20)
#y
my_data <- sample(c(y, x),40)
#my_data

my_data[is.na(my_data)]

my_data2<- x[!is.na(x)]
#positive numbers without NA
my_data2[my_data2 > 0]
#positive numbers + NA
my_data[my_data > 0]

#previous steps in one step
my_data3<- my_data[!is.na(my_data)& my_data > 0]
my_data3

#indexes
#gives back the 3rd, 5st and 7th elements
my_data[c(3, 5, 7)]
#gives back the 2nd and 10th elements
my_data[c(2,10)]
#gives back everything except the 2nd and 10th elements
my_data[c(-2,-10)]
#making the same
my_data[-c(2,10)]

vect <- c(foo = 11, bar = 2, norf = NA)
