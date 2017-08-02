cat("\014")

c<- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mc <- mapply(rep, 1:4, 4:1)
c
mc

noise<- function(n, mean, sd){
  rnorm(n,mean,sd)
}

mapply(noise, 1:5, 1:5, 2)