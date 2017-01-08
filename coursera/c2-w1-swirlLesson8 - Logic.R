##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week2 - swril lesson8
##Logic

# gives back random numbers between 0 and 10 adn put them into a vector
ints <- sample(10)

# write out a vector with TRUE and FALSE
ints > 5

# write out the elements which bigger than 7
which(ints > 7)

#TRUE = if one element from the list is bigger then 0
any(ints > 0)

#TRUE = if all element from the list is bigger then 0
all(ints > 0)