##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 3 quiz - question 1 - 
# The American Community Survey distributes downloadable data about United States 
# communities. Download the 2006 microdata survey about housing for the state of 
# Idaho using download.file() from here:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
# 
# and load the data into R. The code book, describing the variable names is here:
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# Create a logical vector that identifies the households on greater 
# than 10 acres who sold more than $10,000 worth of agriculture products. 
# Assign that logical vector to the variable agricultureLogical. Apply the 
# which() function like this to identify the rows of the data frame where 
# the logical vector is TRUE.
# 
# which(agricultureLogical)
# 
# What are the first 3 values that result?

cat("\014")

library(dplyr)

#step 1 : download the file from
# URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
# download.file(URL,
#               destfile='localfilec2w3q1.csv', method='curl')


data <- read.csv("localfilec2w3q1.csv")
#show every column top 5 record
head(data)
#select first 4 column
head(select(data, RT:PUMA))
#select only 2 column
head(select(data, c("RT", "REGION")))

# ACR=3
# AGS=6

#create logical vector
agricultureLogical <- data$ACR=="3" &  data$AGS=="6"
agricultureLogical
which(agricultureLogical)[1:3]
#ANSWER: 125 238 262