cat("\014")
library(xlsx)
library(XML)

#fileURL<-"https://d396qusza40orc.cloudfront.net/"
#download.file(fileURL, destfile="./getdata%2Fdata%2Fss06hid.csv")
#list.files("./data")


data <- read.csv("getdataFdataFss06hid.csv")

#question1
result<- table(data[,'VAL']==24)
result

#question2
result2<- data[,'FES']
result2


#question3
colIndex<- 7:15
rowIndex<- 17:23
dat<- read.xlsx("getdataFdataFDATA.gov_NGAP.xlsx",sheetIndex = 1, colIndex=colIndex, rowIndex = rowIndex, header=TRUE)
dat
sum(dat$Zip*dat$Ext,na.rm=T)

#question4
fileUrlxml<- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc<- xmlTreeParse(fileUrlxml, useInternal=TRUE)

doc
rootNode<- xmlRoot(doc)
rootNode[[1]][[1]][[2]]
rootNode[[1]][[2]][[2]]
result4<- xpathSApply(rootNode,"//zipcode",xmlValue)=='21231'
table(result4)


#question 5
fileUrlq5="getdataFdataFss06pid.csv"
data5 <- read.csv(fileUrlq5)
DT <- fread(fileUrlq5)

rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]


system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(rowMeans(DT)[DT$SEX==1];rowMeans(DT)[DT$SEX==2])

system.time(mean(DT$pwgtp15,by=DT$SEX))

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
