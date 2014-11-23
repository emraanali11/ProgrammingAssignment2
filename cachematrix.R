## Assignment: Caching the inverse of Matrix
## We are creating 2 functions as defined below to calculate the inverse of Matrix 
## using caching to reduce the computation.

## makeCacheMatrix creates a matrix object, which will return a list
## It will set, get values of vector and also set,get value of inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverse <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cachedSolve functions checks the whether or not inverse is already calculated.
## It skips the computation if it is already calculated
## or else it computes the inverse, 
## and set value using setinverse function.

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
}