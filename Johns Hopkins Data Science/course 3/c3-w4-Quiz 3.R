##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 4 quiz - question 3

cat("\014")

URL<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(URL, destfile = "FGDP.csv")

data<- read.csv("FGDP.csv")

head(data)

countryNames<- data["X.2"]
head(countryNames)

grep("^United",countryNames$X.2, value = TRUE)
#ANSWER: 3

