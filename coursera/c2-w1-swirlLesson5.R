##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1 - swril lesson5

y <- rnorm(1000)
z <- rep(NA, 1000)

#random 100 elements from y,z
my_data <- sample(c(y, z),100)


my_na<- is.na(my_data)
sum(my_na)