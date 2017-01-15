corr <- function(directory, threshold=0) {
    #setwd(directory)
    result = c()
    
    for (i in 1:332) {
        #create the next filename
        if (nchar(i)==1) {
            filename<- paste("00",toString(i),".csv",collapse=NULL, sep="")
        } else {
            if (nchar(i)==2) {
                filename<-paste("0",toString(i),".csv",collapse=NULL, sep="")
            }
            else { 
                filename <- paste(toString(i),".csv",collapse=NULL, sep="")
            } 
        }
        #print(filename)
        
        data <- read.csv(file=filename,header=T,na.strings=c("NA","NaN", " "))
        
        data = na.omit(data)
        
        if (nrow(data) > threshold) {
            cr  <- cor(data[,2], data[,3])
            result <- c(result, cr)
        }
 
    }

    return(result)
    
}

# test data
# corr("specdata", 150)


#question 8
print("question 8")
q_cr <- corr("specdata")
q_cr <- sort(q_cr)
set.seed(868)
out <- round(q_cr[sample(length(q_cr), 5)], 4)
print(out)

#question 9
print ("question 9")
cr <- corr("specdata", 129)
cr <- sort(cr)
n <- length(cr)
set.seed(197)
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

#question 10
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))