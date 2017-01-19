cat("\014")



best <- function(state, outcome) {
  
  print (state)
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  #head(data)

  if (outcome=="heart attack" || outcome=="heart failure" || outcome=="pneumonia") {
    
    if (outcome=="heart attack") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 13))
    }
    else if (outcome=="heart failure") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 19))
    }
    else if (outcome=="pneumonia") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 25))
    }
  }
  else {
    print("not well defined outcome")
    stop()
  }
  
  if (nrow(MultiSelect)==0) {
    print("invalid state")
    stop()
  }

  
  colnames(MultiSelect) <- c("a","b","c")
  MultiSelect <- subset(MultiSelect, c!="Not Available")
  
  

  MultiSelect2 <- MultiSelect[order(-as.numeric(MultiSelect$c),MultiSelect$a,decreasing = TRUE),]
  head(MultiSelect2)
  MultiSelect2[1,]
  #MultiSelect2
}

#"CYPRESS FAIRBANKS MEDICAL CENTER"
best("TX", "heart attack")

#"FORT DUNCAN MEDICAL CENTER"
best("TX", "heart failure")

#"JOHNS HOPKINS HOSPITAL, THE"
best("MD", "heart attack")

#"GREATER BALTIMORE MEDICAL CENTER"
best("MD", "pneumonia")

#NA
best("BB", "heart attack")

