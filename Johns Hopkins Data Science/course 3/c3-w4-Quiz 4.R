##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 4 quiz - question 4


URL1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
URL2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

download.file(URL1, destfile = "FGDP.csv")
download.file(URL2, destfile = "FEDSTATS_Country.csv")

FGDP_data<- read.csv("FGDP.csv")
FEDSTATS_Country_data<- read.csv("FEDSTATS_Country.csv")

head(FGDP_data)
head(FEDSTATS_Country_data)

head(FGDP_data["X"])

data<- merge(FEDSTATS_Country_data, FGDP_data,
             by.x = "CountryCode",
             by.y = "X",
             all=TRUE)

names(data)
data["Special.Notes"]
grep("^Fiscal year end: June",data$Special.Notes, value = TRUE)

#ANSWWER: 13