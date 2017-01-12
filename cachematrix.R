## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## a square invertible matrix 
    ##    1. set the matrix
    ##    2. get the matrix 
    ##    3. set the inverse
    ##    4. get the inverse
  
    inv = NULL
    set = function(y) {
      x <<- y
      inv <<- NULL 
    }
    get = function() x
    setinv = function(inverse) inv <<- inverse
    getinv = function() inv
    list(set=set, get=get, setinv=setinv,getinv=getinv)
  }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
      ##inverse of the original matrix input to MakeCacheMatrix()
  
  inv = x$getinv()
  #if the inverse has already been calcualted
  if(!is.null(inv)){
    #get it from the cache and skip the computation.
    message("getting cached data")
    return(inv)
  }
    #otherwise, calculates the inverse
  mat.data = x$get()
  inv = solve(met.data,...)
  # set the inverse value in cache via the setinv functionn
  x$setinv.(inv)
  
  return(inv)
}

