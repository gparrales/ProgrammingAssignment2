## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	m<- NULL
	set<- function(y){
		x<<- y
		m<<- NULL

	}

	get<- function() x
		setInvMat<- function(solve) m<<- solve
		getInvMat<- function() m
	list(set= set, get = get, setInvMat = setInvMat, getInvMat = getInvMat)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {

	m <- x$getInvMat()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matriz <- x$get()
        m <- solve(matriz, ...)
        x$setInvMat(m)
        m
}
