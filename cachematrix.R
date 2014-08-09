## My function makes and inverts a matrix that is saved in the cache.

## It applies three functions into the cache. One that gets the matrix, one that sets it, and one that gets the inverted mtx.

makeCacheMatrix <- function(x = matrix()) {

  get <- function() x
  set_mtx <- function(mtx) m <<- mtx
  get_mtx <- function() m
  list(get = get,
       setmatrix = set_mtx,
       getmatrix = get_mtx)
}


## Checks if matrix data is cached. If not, it gets the unsolved matrix, inverts it, and then sets it. Returns the inverted matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mtx <- x$get_mtx()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  mtx <- solve(data, ...)
  x$setmatrix(mtx)

  return(mtx)
}
