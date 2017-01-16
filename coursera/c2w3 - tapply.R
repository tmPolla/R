cat("\014")

x<- c(rnorm(10), runif(10), rnorm(10,1))
# gl=> level=3, times=10, repeat 1 10 times, 2 10X, 3 10X
f<- gl(3,10)
f

tapply(x,f,mean)