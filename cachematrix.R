## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Cache the Solution

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setsolve(inverse)
  m
}
