# use FWF load from .for file which is fixed width file format
cat("\014")
fileURL="http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"
fileURL2="http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"
fileURL3="https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
x <- read.fwf(
    fileURL3,
    skip=4,
    widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))

head(x)
head(x[,4])
sum(x[,4])