##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week2

count <- 0
while(count<10){
  print(count)
  count<- count+1
}

z<-5
while(z>=3 && z<=10){
  print(paste("z: ",z))
  coin <- rbinom(1,1,0.5) # gives 1 or 0 randomly like coin throw
  print(paste("coin: ",coin))
  if(coin==1) { ##random walk
    z<-z+1
  } else {
    z<-z-1
  }
}
  
