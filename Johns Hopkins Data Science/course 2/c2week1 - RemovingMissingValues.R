##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

x<- c(1,2,NA,4,NA,5)
bad <- is.na(x)
bad
x[bad]
x[!bad]
z<-x[!bad]
z

y<-c("a","b",NA,"d",NA,"f")
good <- complete.cases(x,y)
good
x[good]
y[good]


t<-c("d",NA,NaN,"b",NA,NA)
better <- complete.cases(x,y,t)
better
x[better]
y[better]
t[better]


