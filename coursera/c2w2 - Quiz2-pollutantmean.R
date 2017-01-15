pollutantmean <- function(directory, what, usedFiles = 1:332) {
    #setwd(directory)
    meanf = c()
    whatlist =c()
    for (i in usedFiles) {
        
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
        
        whatS=handle[what]
        bad= is.na(handle[what])
        goodwhat <- whatS[!bad]
        
        #print(goodwhat)
        whatlist <- c(whatlist,goodwhat)
        
    }
    #print("whatilst")
    #print(whatlist)
    
    print("The mean is: ")
    print(mean(whatlist))
}

#question1
pollutantmean("specdata", "sulfate", 1:10)

#question2
#pollutantmean("specdata", "nitrate", 70:72)

#question3
#pollutantmean("specdata", "sulfate", 34)

#question4
#pollutantmean("specdata", "nitrate")
