##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 3 quiz - question 3

# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
# 
# Load the educational data from this data set:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv
# 
# Match the data based on the country shortcode. How many of the IDs match? 
# Sort the data frame in descending order by GDP rank (so United States is last). 
# What is the 13th country in the resulting data frame?
# 
# Original data sources:
#   
#   http://data.worldbank.org/data-catalog/GDP-ranking-table
# 
# http://data.worldbank.org/data-catalog/ed-stats

cat("\014")

library(dplyr)

#step 1 - load the file

URL1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
URL2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

download.file(URL1,destfile='localfile-fgdp-original.csv', method='curl')
download.file(URL1,destfile='localfile-fgdp.csv', method='curl')
download.file(URL2,destfile='localfile-FEDSTATS_Country-original.csv', method='curl')
download.file(URL2,destfile='localfile-FEDSTATS_Country.csv', method='curl')

dataFGDP <- read.csv("localfile-fgdp.csv")
dataFGDP <- filter(dataFGDP, Ranking>="0")
dataFEDStats <- read.csv("localfile-FEDSTATS_Country.csv")

head(dataFGDP)
head(dataFEDStats)

#Question 3
mergeddata = merge(dataFEDStats, dataFGDP
      ,by.x="CountryCode", by.y = "CountryCode",
      ALL=TRUE)

head(mergeddata)

summary(mergeddata)
nrow(mergeddata)
##ANSWER: 189

# sortedData <- sort(mergeddata$Ranking.x, decreasing = TRUE)
# sortedData
# sortedData[13]
# x<- filter(sortedData, Ranking.x=="178")
mergeddata
orderedData <- mergeddata[order(mergeddata$Ranking.x),]
orderedData
x<- filter(orderedData, Ranking.x=="13")
x
#ANSWER: Spain




#Question 4
#What is the average GDP ranking for the 
#"High income: OECD" and "High income: nonOECD" group?
# dataFGDP
#HIC		High income	49,717,634

# "High income: OECD"
HOECD <- filter(mergeddata, Income.Group=="High income: OECD")
head(HOECD)
summarize(HOECD, resultvar=mean(Ranking))
# ANSWER: 32.96667
HOnonECD <- filter(mergeddata, Income.Group=="High income: nonOECD")
head(HOnonECD)
summarize(HOnonECD, resultvar=mean(Ranking))
#ANSWER: 91.91304



#Question 5
# Cut the GDP ranking into 5 separate quantile groups. 
# Make a table versus Income.Group. How many countries
# are Lower middle income but among the 38 nations with highest GDP?
cut(mergeddata$Ranking,5)
