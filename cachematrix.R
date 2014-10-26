## The functions makeCacheMatrix and cacheSolve work with a matrix object created 
# that can save a cached version of its inverse, created by makeCacheMatrix. 

## To solve the inverse for this matrix object, cacheSolve checks the cache of the matrix 
# and if there have been any changes to the matrix. 
# If the matrix has changed or the inverse has not been calculated before, it computes 
# the inverse of the matrix, and the value is stored in the matrix object. 
# If the inverse has been computed  beforehand and no changes have been made to the matrix
# object, the cached value of the inverse is fetched, eliminating the need to redo a calculation
# 

makeCacheMatrix <- function(x = matrix()) {
## makeCacheMatrix creates a matrix object that can cache its inverse 
# Args: 
# 	x: A matrix vector with no caching
# 	
# Returns: A list containing the functions to the matrix
#
	invm <- NULL #Variable to store the inverse Matrix

	#Set the value of the matrix
	set <- function(y){
		x <<- y
		invm <<- NULL #if the matrix is changed it will reset the inverse
	}

	#Get the value of the matrix
	get <- function() x

	#Set the value of the inverse
	setInverse <- function(inverse) {
		invm <<- inverse #assume that the matrix supplied is always invertible
	} 

	#Get the value if the matrix
	getInverse <-function() invm

	#Return value
	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
 
}


cacheSolve <- function(x, ...) {
## cacheSolve computes the inverse of the matrix in mackeCacheMatrix
# if the inverse has already been calculated, and there have been no changes to the matrix
# chacheSolve should retrieve the inverse from the cache
# Args:
# 	x: a matrix 
# 	...: extra parameters
# Returns: A matrix that is the inverse of 'x'
	
	#Return the inverse matrix
	invm <- x$getInverse()

	#Return inverse form cache
	if(!is.null(invm)){
		message("Getting cached data")
		return(invm)
	}

	#Get the matrix from the matrix object
	data <- x$get()

	#Calculate the inverse 
	invm <- solve(data,...)

	#Set the value of the inverse to the cached matrix obj
	x$setInverse(invm)

	#Return the matrix
	invm

}
