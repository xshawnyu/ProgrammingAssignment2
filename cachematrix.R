## Put comments here that give an overall description of what your
## functions do

## this function assigns the matrix and uses built-in function solve to get the inverse matrix 

makeCacheMatrix <- function(x = matrix()) {
	inv <-NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
}
	get <- function() x
	setinv <- function(solve) inv <<- solve
	getinv <- function () inv
	list (set = set, get = get, setinv = setinv, getinv =getinv)
}
## this function checks first to see if the inverse already exists in cache, if so retrieve and output the
## inverse matrix, otherwise it would calculate the inverse of the input matrix

cacheSolve <- function(x, ...) {

	inv <- x$getinv()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
}
	data <- x$get()
	inv <-solve(data,...)
	x$setinv(inv)
	inv
        ## Return a matrix that is the inverse of 'x'
}
## example
z<-matrix(1:4,2,2)
cacheSolve(makeCacheMatrix(z))
