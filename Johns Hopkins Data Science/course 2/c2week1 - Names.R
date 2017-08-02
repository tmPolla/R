##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1

x<- 1:3

## list of integer doesn't have name
names(x)

## giving name to X like foo=1; bar=2, norf=3
names(x) <- c("foo","bar","norf")
x

##now the list has a name
names(x)

#create a matrix
m<- matrix  (1:4, nrow=2, ncol=2)
#giving nameto the matrix
dimnames(m) <- list(c("a","b"),c("c","d"))
m