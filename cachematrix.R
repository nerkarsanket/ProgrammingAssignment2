## Put comments here that give an overall description of what your
## a: the input Matrix object
## returns special matrix

makeCacheMatrix <- function(a = matrix()) {
inv <- NULL
set <- function(b) {
a <<- b
inv <<- NULL
}
get <- function() a
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
list(set = set, get = get,
setinv = setinv,
getinv = getinv)
}

## a: the input Special Matrix object
## Returns Cached inverse for given matrix

cacheSolve <- function(a, ...) {
inv <- a$getinv()
if(!is.null(inv)) {
message("get cached inverse matrix")
return(inv)
}
data <- a$get()
inv <- solve(data)
a$setinv(inv)
inv
}
