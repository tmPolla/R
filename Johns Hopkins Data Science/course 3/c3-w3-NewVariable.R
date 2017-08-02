#creating sequences
cat("\014")
s1<- seq(1,10,by=2);s1


s2<- seq(1,10,length=3); s2

x<- c(1,3,8,25,100); seq(along=x)

restData$nearMe = restData$neighborhood %in% c("Roland Park","Homeland")
table(restData$nearMe)

restData$zipWrong = ifelse(restData$zipCode<0, TRUE, FALSE)
table(restData$zipWrong, restData$zipCode<0)

#using mutate function
library(Hmisc)
library(plyr)
restData2 = mutate(restData, zipGroups=cut2(zipCode, g=4))
table(restData2$zipGroups)
