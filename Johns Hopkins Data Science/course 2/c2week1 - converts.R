##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

##convert
##what the type of the x6
x1<- 0:6
class(x1)

as.numeric(x1) ## conv integer to number
as.logical(x1) ## conv integer to boolean
## result false true true true true because 0 is false otherise true
as.character(x1) ## conv integer to char
## result "0" "1"...

x2 <- c("a","b","c")
as.numeric(x2)
##result: NA NA NA + warning, because the a is not a number

as.logical(x2)
##result: NA NA NA - without any warning

as.complex(x2)
##result 0+0i, 1+0i

