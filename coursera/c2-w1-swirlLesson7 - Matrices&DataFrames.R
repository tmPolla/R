##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1 - swril lesson7 Matrices and Data Frames

my_vector <- c(1:20)
my_vector2 <- 1:20

# here we the var don't have dim
dim(my_vector)

#let's define the dim
#change vector to matrix
dim(my_vector) <- c(4,5)

#check the type of the my_vector which willl be matrix
class(my_vector)

#now we have dim
dim(my_vector)

#the number of rows and the second is the number of columns
attributes(my_vector)

# create a matrix from scrach
my_matrix2 <- matrix(1:20, 4,5)

patients <- c("Bill","Gina","Kelly","Sean")

my_data <- data.frame(patients, my_matrix)
cnames <- c("patient","age", "weight", "bp", "rating", "test")

colnames(my_data) <- cnames