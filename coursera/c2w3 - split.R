cat("\014")

x<- c(rnorm(10), runif(10), rnorm(10,1))
f<- gl(3,10)
x
f

c<- c(1,2,3)
split(x,f)


split(x,2)
split(x,3)

split(x,c)

lapply(split(x,f), mean)


x<- rnorm(10)
f1<- gl(2,5)
f2<- gl(5,2)
f1
f2
interaction(f1,f2)

str(split(x, list(f1,f2)))

# drop the 0 value
str(split(x, list(f1,f2), drop=TRUE))