cat("\014")
library(datasets)
data(iris)
head(iris)


#iris

s<- split(iris, iris$Species)


#Question 1
lapply(s, function(x) colMeans(x["Sepal.Length"]))

#Please round your answer to the nearest whole number.
#$virginica
#Sepal.Length 
#6.588 
#7

#Question 2
apply(iris[, 1:4], 2, mean)


library(datasets)
data(mtcars)

#Question 3
#average miles per gallon (mpg) 
#by number of cylinders in the car (cyl)
# avg mpg per cyl(4,6,8)
mtcars

sapply(split(mtcars$mpg, mtcars$cyl), mean)

apply(mtcars, 2, mean)

with(mtcars, tapply(mpg, cyl, mean))

tapply(mtcars$cyl, mtcars$mpg, mean)

tapply(mtcars$mpg, mtcars$cyl, mean)

mean(mtcars$mpg, mtcars$cyl)

split(mtcars, mtcars$cyl)

lapply(mtcars, mean)

sapply(mtcars, cyl, mean)

#Question 4
#absolute difference between the average horsepower 
#of 4-cylinder cars and the average horsepower 
#of 8-cylinder cars
s<- sapply(split(mtcars$hp, mtcars$cyl), mean)
s[1]-s[3]