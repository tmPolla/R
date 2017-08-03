##Data Science - Johns Hopkins University
##coursera
## course 3 - R
## week 3 quiz - question 2


library(jpeg)
URL="getdata%2Fjeff.jpg"
dataimg<- readJPEG(URL, native = TRUE)

quantile(dataimg, probs = c(0.3, 0.8))
#ANSWER: -15259150 -10575416