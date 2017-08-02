cat("\014")
set.seed(13435)
x<- data.frame("var1"=sample(1:5), "var2"=sample(6:10), "var3"=sample(11:15))
x

#new data to var1; set value in var2; var3 is unchanged
x<- x[sample(1:5),];x$var2[c(1,3)]=NA
x

x[,1]
x[,"var1"]
x[1:2,"var2"]

#logical expression
x[(x$var1<=3 & x$var3>11),]

x[(x$var1<=3 | x$var3>15),]

#missign values
x[which(x$var2>8),]

#Ordering
x[order(x$var1),]
library(plyr)
arrange(x, var1)
arrange(x, desc(var1))

#adding rows and columns
x$var4<- rnorm(5)

y<- cbind(x, rnorm(5))
y