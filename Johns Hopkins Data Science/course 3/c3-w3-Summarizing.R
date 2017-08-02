cat("\014")

#resData should be a loaded csv

head(restData, n=3)
tail(restData, n=3)
summary(restData)
str(restData)

quantitle(restData$councilDisticr.na.rm=TRUE)
quantitle(restData$councilDisticr, probs=c(0.5, 0.75, 0.9))

table(restData$zipCode, useNA="ifany")
table(restData$councilDistrict, restData$zipCode)

sum(is.na(restData$councilDistrict))
any(is.na(restData$councilDistrict))
all(restData$zipCode>0)

colSums(is.na(restData))
all(solSums(is.na(restData))==0)

#values to spec char
table(restData$zipCode %in% c("21212"))
table(restData$zipCode %in% c("21212","21213"))
restData[restData$zipCode %in% c("21212","21213"), ]

#Cross tabs
data(UCBAdmissions)
DF = as.data.frame(UCBAdmissions)
summary(DF)

xt<- xtabs(Freq~Gender + -admit, data=DF)
xt

#flat tables
warpbreaks$replicate <- rep(1:9, len=54)
xt<- xtabs(breaks ~., data=wrapbreaks)
xt
ftable(xt)

#Size of dataset
fakeData=rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData), units="Mb")