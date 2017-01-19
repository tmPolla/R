cat("\014")

rankhospital <- function(state, outcome, num){
  print (state)
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  #head(data)
  orderStyle<- "default"
  if (outcome=="heart attack" || outcome=="heart failure" || outcome=="pneumonia") {
    
    if (outcome=="heart attack") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 11))
    }
    else if (outcome=="heart failure") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 17))
    }
    else if (outcome=="pneumonia") {
      MultiSelect <- subset(data, State==state, select=c(2, 7, 23))
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
  
  if (num=="best") {
    ranknum <-1
    orderStyle="BOTTOM"
  } else if (num=="worst") {
    ranknum <- 1
    orderStyle="TOP"
  } else if (num>nrow(MultiSelect)) {
    print("NA")
    stop()
  } else {
    ranknum <- num
  }
  
  
  colnames(MultiSelect) <- c("a","b","c")
  MultiSelect <- subset(MultiSelect, c!="Not Available")
  
  
  
  if (orderStyle=="TOP") { 
    MultiSelect2 <- MultiSelect[order(-as.numeric(MultiSelect$c),MultiSelect$a,decreasing = FALSE),]
  } else if (orderStyle=="BOTTOM") {
    MultiSelect2 <- MultiSelect[order(-as.numeric(MultiSelect$c),MultiSelect$a,decreasing = TRUE),]
  } else {
    MultiSelect2 <- MultiSelect[order(as.numeric(MultiSelect$c),MultiSelect$a,decreasing = FALSE),]
  }
  
  print("here comes the head print")
  print (head(MultiSelect2))
  
  print("here comes the spec print")
  MultiSelect2[ranknum, ]
}



rankhospital("MD", "heart failure", 5)

#DETAR HOSPITAL NAVARRO
rankhospital("TX", "heart failure", 4)

# HARFORD MEMORIAL HOSPITAL
rankhospital("MD", "heart attack", "worst")

#NA 
rankhospital("MN", "heart attack", 5000)

