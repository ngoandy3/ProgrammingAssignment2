## Put comments here that give an overall description of what your
## functions do

##take matrix that can cache its matrix

makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
        set <- function(y) {
                m <<- y
                i <<- NULL
        }
        get <- function() {
                m
        }
        setInverse <- function(inverse) {
                i <<- inverse
        }
        getInverse <- function() {
                i
        }
        
        ##return list with the 4 functions above
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## returns the inverse of a special matrix

cacheSolve <- function(x, ...) {
        m <- y$getInverse()     ##gets cached value for the inverse
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ##solve it since it was empty
        data <- y$get()
        m <- solve(data)
        y$setInverse(m)
        m
}
