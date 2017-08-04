##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 4 quiz - question 1 

# The American Community Survey distributes downloadable data about United States communities. 
# Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
# 
# and load the data into R. The code book, describing the variable names is here:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# Apply strsplit() to split all the names of the data frame on the characters "wgtp". 
# What is the value of the 123 element of the resulting list?

cat("\014")

#STEP 1 download the file
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(URL, destfile = "Fss06hid.csv")
data <- read.csv("Fss06hid.csv")

strsplit(names(data),"wgtp")[123]

#ANSWER:  ""   "15"