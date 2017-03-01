## This programming sequnce makes a matrix that can be inversed
## It will calculate and store the inverse for future use

## Creates a matrix that can be inverted

makeCacheMatrix <- function(x = matrix()) {
  
      ## Need to set the matrix
      ## Need to get the matrix
      ## Need to set the inverse
      ## Need to get the inverse
      ## Needed to feed cacheSolve()
  
  i = NULL
  set = function(y) {
      # `<<-` assigns a value to an object in an environment. 
    x <<- y
    i <<- NULL
  }
  get = function() x
  seti = function(inverse) i <<- inverse 
  geti = function() i
  list(set=set, get=get, seti=seti, geti=geti)
}


## Takes the above matrix and calculates the inverse if not already present
## Stores the inverse for future reference

cacheSolve <- function(x, ...) {
      ## Makes use of the makeCacheMatrix result
  
      ## Calculates the inverse of the original matrix
  i = x$geti()
  
      ## Checks to see if inverse is already present
  if (!is.null(i)){
      
      ## retrieves inverse if previously calculated
    message("getting cached data")
    return(i)
  }
  
     ## if not previously calculated, computes inverse 
  mat.data = x$get()
  i = solve(mat.data, ...)
  
  # sets the value of the inverse in the cache via the setinv function.
  x$seti(i)
  
  return(i)
}