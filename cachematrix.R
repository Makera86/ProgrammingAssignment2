## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(x = matrix()) {
y <- NULL
set <- function(z)
{
x <<- z
y <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() y
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
y<- x$getinverse()
if(!is.null(y)) {
message("getting cached data")
return(y)
}
data <- x$get()
y<- solve(data, ...)
x$setinverse(y)
m
}
