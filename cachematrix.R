## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores a matrix X in memory
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
## cacheSolve shows the inverse of a matrix if is in memory or computes the inverse and then shows the inverse
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
        message("getting cached data")
        return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
