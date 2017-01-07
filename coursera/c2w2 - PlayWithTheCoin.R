
maxsteps<-0

for (i in 1:10000) {
  print("New round")
  steps<-0
  z<-5
  while(z>=3 && z<=10){
    ##print(paste("z: ",z))
    coin <- rbinom(1,1,0.5) # gives 1 or 0 randomly like coin throw
    ##print(paste("coin: ",coin))
    if(coin==1) { ##random walk
      z<-z+1
    } else {
      z<-z-1
    }
    steps<- steps+1
  }
  if(maxsteps < steps) {
    maxsteps <- steps
  }
  print(paste("Full step: ", steps))
}

print(paste("Maximum steps: ", maxsteps))
