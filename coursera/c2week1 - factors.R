##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

#the order of the level can be set
x<- factor(c("yes","yes","no","yes","no"),
           levels = c("yes","no"))
x

## name + levels + count of levels
table(x)

#level convert to number yes=1, no=2
unclass(x)


x2<- factor(c("yes","yes","no","yes","no","maybe","yes"),
           levels = c("yes","no"))
table(x2)
##maybe wasn't define as a level so there we see a NA
unclass(x2)