y <- 10
# this is found in global environment
#lexical

f<- function(x){
    y<- 2
    y^2 + g(x)
    ## 2*2+30
}

g<- function(x){
    x*y 
    ##3*10=30
}

f(3)
