##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week2 - swril lesson8
##Functions

# system date only in yyyy-mm-dd based on based on your computer's environment so this is local time
Sys.Date()


#function in function
 add_two_numbers <- function(num1, num2){
    num1 + num2
 }

 multiply_two_numbers <- function(num1, num2){
	num1 * num2
 }

 some_function <- function(func){
    func(2, 4)
 }
 
 

 evaluate <- function(func, dat){
   func(dat)
 }
 
 evaluate(function(x){x+1}, 6)
 
 evaluate(function(x){x[1]}, c(8, 4, 0))
 
 evaluate(function(x){x[length(x)]}, c(8, 4, 0))
 
 
 
 ## ...
 telegram <- function(...){
   paste("START",...,"STOP")
 }
 
 telegram("nice","day","to","learn")