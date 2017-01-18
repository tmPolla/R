cat("\014")

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <- function(y) {
    x<<-y
    m<<-NULL
  }
  get<- function() x
  
  setsolve <- function(solve) m<<-solve
  getsolve <- function() m
  list(set=set, get=get,
       setsolve=setsolve,
       getsolve=getsolve)
}

# chache solve without additional checks
cacheSolve<- function(x,...){
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setsolve(m)
  m
}

# chache solve 2 with checks
cacheSolve2<- function(x,...){
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  if (ncol(data)==nrow(data)) {
    m<-solve(data,...)
    x$setsolve(m)
    m
  }
  else {
    print ("Not a square matrix")
  }
}



## Write a short comment describing this function
#cat("\014")
simpleSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## invert auto TRUE
  print (ncol(x))
  #check whenever it's square
  if (ncol(x)==nrow(x)) {
    return (solve(x))
  }
  else {
    print ("Not a square matrix")
  }
}

# try the simple solve
x <- matrix(1:4,2,2)
simpleSolve(x)

# check the usage of the cach methods
tm<-makeCacheMatrix(matrix(1:6,3,2))
tm
summary(tm)
tm$get()
cacheSolve(tm)
# now I expected the message
cacheSolve(tm)

cacheSolve2(tm)


