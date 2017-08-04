##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 4 quiz - question 5

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)

head(sampleTimes)
names(sampleTimes)

grep("^2012",sampleTimes)
#ANSWER: 250

MondayData<- grep("^2012",sampleTimes, value = TRUE)
head(MondayData)

MondayData2<- as.Date(MondayData, format="%Y-%m-%d")
head(MondayData2)
MondayData2<- format(MondayData2, format="%Y-%m-%A")
head(MondayData2)
grep("h??tf??",MondayData2)
#ANSWER: 47