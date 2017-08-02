library(reshape2)
head(mtcars)

mtcars$carname<- rownames(mtcars)
carMelt<- melt(mtcars, id=c("carname", "gear", "cyl"), measure.vars=c("mpg","hp"))
head(carMelt, n=3)

#Casting data frames
cylData<- dcast(carMelt, cyl~variable)
cylData

cylData <- dcast(carMelt, cly~variable, mean)
cylData