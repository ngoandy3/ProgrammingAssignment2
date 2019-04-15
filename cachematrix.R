##function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
        ##clears old inverse from the cache and states the set value of the matrix
        set <- function(y) {
                m <<- y
                i <<- NULL
        }
        ##getting the matrix
        get <- function() {
                m
        }
        ##setting the inverse of the matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
        ##getting the inverse of the matrix
        getInverse <- function() {
                i
        }
        
        ##return list with the 4 functions above
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


##returns the inverse of the special matrix
##makes sure that if the inverse has already been calculated that it will not change it

cacheSolve <- function(x, ...) {
        m <- y$getInverse()     ##gets cached value for the inverse
        ##returns the inverse if it is already set
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ##get the matrix
        data <- y$get()
        ##calculate the inverse
        m <- solve(data)
        ##set inverse to the object
        y$setInverse(m)
        ##print
        m
}
