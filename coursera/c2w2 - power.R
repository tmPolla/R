##create the base function
make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

#create instances with n
cube<- make.power(3)
square<- make.power(2)

#give value x
cube(3)

square(3)

#check the variables and functions in cube
ls(environment(cube))

#what is the value of the stored variable
get("n", environment(cube))

ls(environment(square))

get("n", environment(square))
