##Data Science - Johns Hopkins University
##coursera
## course 3 - R
##week3

#checking factor behavior
cat("\014")
yesno <- sample(c("yes","no"), size=10, replace=TRUE)
yesno
yesnofac = factor(yesno, levels=c("yes","no"))
as.numeric(yesnofac)

yesnofac
