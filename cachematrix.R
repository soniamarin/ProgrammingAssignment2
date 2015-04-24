## Put comments here that give an overall description of what your 
## functions do
## These two functions can be used to receive a square matrix data and get the inverse matrix 
## and cache the results to be used later in order to reduce calculations

## Write a short comment describing this function
## the makeCacheMatrix is a function to get the data of a square matrix and calculate the inverse
## and return both the data and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
      sol <- NULL
      set <- function(y) {
      x <<- y
      sol <<- NULL
  }
      get <- function() x
      setinv <- function(solve) sol <<- solve
      getinv <- function() sol
      list(set = set, get = get,
      setinv = setinv,
      getinv = getinv)
}
## Write a short comment describing this function
## the cacheSolve function try to reduce calculations, getting the inverse matrix if was previusly 
## calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
      minv <- x$getinv()
      if(!is.null(minv)) {
      message("getting cached data")
      return(minv)
    }
      data <- x$get()
      minv <- solve(data, ...)
      x$setinv(minv)
      m
  }
 