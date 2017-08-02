##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week2

x<- c("a","b","c","d")

#these will make the same
for (i in 1:4) {
  print(x[i])
}

# x length
# this is a vector of length 4
for (i in seq_along(x)){
  print(x[i])
}


for (letter in x) {
  print(letter)
}

for (i in 1:4) print(x[i])

m<- matrix(1:6, 2,3)
m
for(i in seq_len(nrow(m))){
  
  for (j in seq_len(ncol(m))){
    print(m[i,j])
  }
}
