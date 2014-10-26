## The functions makeCacheMatrix and cacheSolve work with a matrix object created 
# that can save a cached version of its inverse, created by makeCacheMatrix. 

## To solve the inverse for this matrix object, cacheSolve checks the cache of the matrix 
# and if there have been any changes to the matrix. If the matrix has changed or the 
# inverse has not been calculated before, it computes the inverse of the matrix object, 
# and the value is stored in the matrix object. Therefore, if the inverse has been computed 
# beforehand and no changes have been made to the matrix object, 
# the cached value of the inverse is fetched, eliminating the need to redo a calculation

## makeCacheMatrix creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve computes the inverse of the matrix in mackeCacheMatrix
# if the inverse has already been calculated, and there have been no changes to the matrix
# chacheSolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
