cat("\014")

#STEP 0
# file location setting
from_location <- "E:/"
to_location <- "C:/R/dest-folder/"




filelist_from_location <- list.files(from_location)
filelist_to_location <- list.files(to_location)

fileF <- filelist_from_location
fileT <- filelist_to_location

# print (fileF)
# print(fileT)


for (i in 1:length(filelist_from_location)){
  check_file_from <- fileF[i]
  #match pattern
  if (grepl("Group TAC+", check_file_from )==TRUE
        && grepl("+Full-Set+", check_file_from )==TRUE
        && grepl("+semicolon+", check_file_from )==TRUE
      ) {
      
      #print (check_file_from)
      if (is.na(match(check_file_from, fileT))) {
        # print (check_file_from)
        # print ("heres coming a copy")
        
        #STEP 1
        # copy file from destination to source
        file_name_zip <- check_file_from
        # file_name2 <- "Group TAC April V1 Full-Set (semicolon).csv"
        # file_name_new <- "GROUP TAC latest.csv"
        
        from <- paste(from_location,file_name_zip,sep='')
        print(from)
        to <- paste(to_location,file_name_zip,sep='')
        print(to)
        
        
        file.copy(from=from, to=to)
        
        
        #STEP 2
        #unzip the file
        #!!!! unzip the max last modified date file
        workfile <- to
        setwd(to_location)
        unzip(workfile)
        
        
        #STEP 3
        #re-name the unzipped file
        #file.rename(file_name2,file_name_new)
      }
  }
}


file.mtime("Group TAC March V2 Full-Set (semicolon).zip")
