complete <- function(directory, usedFiles = 1:332) {
    #setwd(directory)
    meanf = c()
    whatlist =c()
    count=0
    for (i in usedFiles) {
        count=count+1
        #print ("start the new file")
        
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
        
        handle = read.csv(file=filename,header=T)
        
        MultiSelect<-subset(handle, sulfate>=0 & nitrate>=0, select=ID)
        MultiSelect2<-as.numeric(unlist(MultiSelect))
        print (paste(count, i, length(MultiSelect2)))
    }
}

#test case
# complete("specdata", 30:25)

#question5
print("question 5")
complete("specdata", c(6, 10, 20, 34, 100, 200, 310))

#question6
print("question 6")
complete("specdata", 54)

#question7
print ("question7")
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])