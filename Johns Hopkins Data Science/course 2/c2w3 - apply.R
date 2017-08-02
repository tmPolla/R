# clear console
cat("\014") 

x<- matrix(rnorm(200),20,10)
x

# mean per column
apply(x,2, mean)
 
# sum per row
apply(x,1,sum)

# highly optimazied versions
# rowSum = apply(x,1,sum)
# rowMean = apply(x,1,mean)
# colSum = apply(x,2,sum)
# colMean = apply(x,2,mean)


x<- matrix (rnorm(200),20,10)
apply(x,1, quantile, probs=c(0.25, 0.75))


# create 10 2X2 matrix
a<- array(rnorm(2*2*10), c(2,2,10))
a
#these two are equal
apply(a,c(1,2), mean)
rowMeans(a, dim=2)