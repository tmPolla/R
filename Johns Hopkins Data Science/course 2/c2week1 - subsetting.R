##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

x <- c("a","b","c","d","a")
x[1]
x[2]
x[1:4]
##numerics have orders
#print elements where the elemnt is bigger then a
x[x>"a"]

##bigger then a then TRUE else FALSE
u<- x>"a"
u

#Subsetting list
x2 <- list(foo=1:4, bar=0.6)
#gives back name + values => foo=1,2,3,4 
x2[1]
#gives back only the values
x2[[1]]
#gives back only the value
x2$bar

x3<-list(foo=1:4, bar=0.6, baz="hello")
## gives back the 1st and the 3rd element with names + values
x[c(1,3)]

##giving back dinamically record
whichname <- "foo"
x3[[whichname]]

#Subsetting nested element of list
x4<- list(a = list(10,12,14), b=c(3.14,2.81))
x4
## gives back the 3rd element of the first touple
x4[[c(1,3)]]
x4[[1]][[3]]
## gives back the 1st element of the second touple
x4[[c(2,1)]]

#create a matrix
m<- matrix(1:6,2,3)
m
## m[i,j] where i=row, j=column
m[1,2]
m[2,1]
m[1,]
m[,2]

## true is the default
m[1,2]
m[1,2,drop=FALSE]
m[1,2,drop=TRUE]
