cat("\014")
x<- rnorm(10)
x

x<- rnorm(10,20,2)
x

summary(x)

#need to set the seed before every norm
set.seed(1)
rnorm(5)

rnorm(5)

# Poisson distribution
rpois(10,1)
rpois(10,2)
rpois(10,20)

##Cumulative distribution
ppois(2,2) ##PR(x<= 2)
ppois(4,2) ##PR(x<= 4)
ppois(6,2) ##PR(x<= 6)