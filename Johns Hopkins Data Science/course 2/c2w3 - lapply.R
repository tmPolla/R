x<- list(a=1:5, b=rnorm(10))
lapply(x, mean)

#runif => random numbers
y<- 1:4
lapply(y, runif)

#random numbers between 0 and 10
x2 <- 1:4
lapply(x2, runif, min=0, max=10)

# first column from both matrix
x3<- list(a=matrix(1:4,2,2), b=matrix(1:8,4,2))
x3
lapply(x3, function(elt) elt[,1])
