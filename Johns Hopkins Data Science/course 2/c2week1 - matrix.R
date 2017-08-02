##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

## define 2X3 matrix
m<- matrix (nrow=2, ncol=3)
print(m)

dim(m)
attributes(m)

## define 2X3 matrix with elements
m2<- matrix (1:6, nrow=2, ncol=3)
print(m2)

## list with 1,2,3...10 values
m3 <- 1:10
m3
## re-stracture to 2X3 matrix
dim(m3)<- c(2,5)
print(m3)


x<-1:3
x
y<-10:12
y
## create matrix as column bind
cbind(x,y)
## create matrix as row bind
rbind(x,y)


