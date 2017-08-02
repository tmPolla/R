cat("\014")

rankall <- function(outcome, num){

  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  #head(data)
  orderStyle<- "default"
  if (outcome=="heart attack" || outcome=="heart failure" || outcome=="pneumonia") {
    
    if (outcome=="heart attack") {
      MultiSelect <- subset(data, select=c(2, 7, 11))
    }
    else if (outcome=="heart failure") {
      MultiSelect <- subset(data, select=c(2, 7, 17))
    }
    else if (outcome=="pneumonia") {
      MultiSelect <- subset(data, select=c(2, 7, 23))
    }
  }
  else {
    print("not well defined outcome")
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

  s<- split(data.frame(a=MultiSelect2$a,b= MultiSelect2$b, c=MultiSelect2$c, d=rank(MultiSelect2$c, ties.method ="max")), MultiSelect2$b)
  s
  
  s2<- split(MultiSelect2, MultiSelect2$b)
  #MultiSelect3<- data.frame(a=MultiSelect2$a,b= MultiSelect2$b, c=MultiSelect2$c, d=rank(MultiSelect2$c, ties.method ="max"))
  #s<- split(MultiSelect3, MultiSelect3$b)
  #MultiSelect3
  
}


cat("\014")
rankall("heart attack", 20)

#head(rankall("heart attack", 20), 10)


