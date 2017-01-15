corr <- function(directory, threshold=0) {
    #setwd(directory)
    meanf = c()
    whatlist =c()
    for (i in 1:10) {
        
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
        
        MultiSelectSUlf<-subset(handle, sulfate>=0 & nitrate>=0, select=sulfate)
        MultiSelectSUlf2<-as.numeric(unlist(MultiSelectSUlf))
        MultiSelectNit<-subset(handle, sulfate>=0 & nitrate>=0, select=nitrate)
        MultiSelectNit2<-as.numeric(unlist(MultiSelectNit))
        print (i)
        cr  <- cor(MultiSelectSUlf2, MultiSelectNit2)
        print (cr)
        #sm <- summary(cr)
        #print (sm)
    }

}

# test data
#corr("specdata", 150)

corr("specdata")
