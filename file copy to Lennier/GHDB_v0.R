cat("\014")

#STEP 1
# copy file from destination to source
from_location <- "E:/"
to_location <- "C:/R/dest-folder/"

# !!!!!!!!!!
file_name <- "Group TAC April V1 Full-Set (semicolon).zip"
file_name2 <- "Group TAC April V1 Full-Set (semicolon).csv"
file_name_new <- "GROUP TAC latest.csv"

from <- paste(from_location,file_name,sep='')
print(from)
to <- paste(to_location,file_name,sep='')
print(to)


file.copy(from=from, to=to)


#STEP 2
#unzip the file
#!!!! unzip the max last modified date file
workfile <- to
setwd(to_location)
unzip(workfile)


#STEP 3
#re-name the unzipped file
file.rename(file_name2,file_name_new)