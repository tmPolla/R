pollutantmean <- function(directory, what, usedFiles) {
    creatematrix <- function(usedFiles) {
        count=0
        for (i in usedFiles){
            count = count+1
        }
        
        m <- matrix (nrow=count, ncol=3)
        rownames(m) <- c(1:count)
        colnames(m) <- c("", "id", "nobs")
    }
    
    putIntoMatrix <- function(row, col1, col2){
        m[row,2]=col1
        m[row,3]=col2
    }
    
    #setwd(directory)
    creatematrix(usedFiles)
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
        #putIntoMatrix(count, i, length(MultiSelect2))
    }
    print(m)
}

pollutantmean("specdata", "sulfate", 30:25)
