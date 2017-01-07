add2 <- function(x,y){
  x+y
}

above10 <- function(x){
  use<- x>10
  x[use]
}

## n =10 default, but the user can give other custom value too
above <- function(x,n=10){
  use <- x>n
  x[use]
}

columnmean<- function(x, removeNA=TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means 
}