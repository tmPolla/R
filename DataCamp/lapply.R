usac<- list(pop=1234,
           cities = c("NY", "Boston", "LA"),
           capital=FALSE)

for (info in usac){
  print(class(info))
}


lapply(usac, class)


####### unlist + lapply make the same as sapply with use.names=FALSE
usacity<- c("NY", "LA", "Boston", "SF")

unlist(lapply(usacity, nchar))

sapply(usacity, nchar, USE.NAMES=FALSE)
sapply(usacity, nchar)

### the output of the lapply is a list so we can unlist for a simple vector
fruit_prices<- list(1.1, 2.2, 3.3, 4.4)
multiply <- function(x, factor){
  x*factor
}

times2 <- lapply(fruit_prices, multiply, factor=2)
unlist(times2)
str(times2)
