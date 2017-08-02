
#open the file
handle=read.csv("hw1_data.csv")


#In the dataset provided for this Quiz, what are the column names of the dataset?
head(handle)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
head(handle,2)

#How many observations (i.e. rows) are in this data frame?
nrow(handle)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(handle,2)

#What is the value of Ozone in the 47th row?
handle[47,1:6]

#how many missing values are in the Ozone?
sum(is.na(handle[1])==TRUE)

#What is the mean of the Ozone column in this dataset?
#mean=average
ozoneS<- handle["Ozone"]
bad= is.na(handle["Ozone"])
goodOzone<-ozoneS[!bad]
mean(goodOzone)
#or this works too
summary(handle)


#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
MultiSelect<-subset(handle, Ozone>31 & Temp>90, select=Solar.R)
MultiSelect2<-as.numeric(unlist(MultiSelect))
mean(MultiSelect2)

#What is the mean of "Temp" when "Month" is equal to 6?
TempS=subset(handle, Month==6, select=Temp)
TempS2<-as.numeric(unlist(TempS))
mean(TempS2)

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
MaxZone=subset(handle, Month==5, select=Ozone)
MaxZone2<-as.numeric(unlist(MaxZone))
max(MaxZone2, na.rm = TRUE)
