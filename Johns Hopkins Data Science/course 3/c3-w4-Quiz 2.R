##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 4 quiz - question 2
# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
# 
# Remove the commas from the GDP numbers in millions of dollars and average them. What is the average?
# 
# Original data sources:
#     
#     http://data.worldbank.org/data-catalog/GDP-ranking-table

cat("\014")

URL<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(URL, destfile = "FGDP.csv")

data<- read.csv("FGDP.csv")

head(data)

head(data)["X.3"]

gsub("\\,",".",data["X.3"])

data["X.3"]
data[5:235,"X.3"]

slicedData <- data[5:235,"X.3"]

slicedData <- gsub("\\,",".",slicedData)
slicedData
