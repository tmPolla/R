##Data Science - Johns Hopkins University
##coursera
## course 2 - R
##week1


x<- 1:4; y<-6:9
x;y
# summarize list 1+6, 2+7...
x+y
#print true where the element > 2
x>2
x>=2
#print true where the element exactly equal to 8
y==8

x*y
x/y

mx <- matrix(1:4,2,2)
my<- matrix(rep(10,4),2,2)
mx;my
#element wise multiplication
##1*10; 2*10; 3*10; 4*10
mx*my
##1/10; 2/10; 3/10; 4/10
mx/my

# true matrix multiplication
#1*10+3*10; 1*10+3*10; 2*10+4*10; 2*10+4*10
mx%*%my
 