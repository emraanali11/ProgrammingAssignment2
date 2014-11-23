## Assignment: Caching the inverse of Matrix
## We are creating 2 functions as defined below to calculate the inverse of Matrix 
## using caching to reduce the computation.

## makeCacheMatrix creates a matrix object, which will return a list
## It will set, get values of vector and also set,get value of mean.

makeCacheMatrix <- function(x = matrix()) {
    invx <- NULL
    set <- function(y) {
      x <<- y
      invx <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
