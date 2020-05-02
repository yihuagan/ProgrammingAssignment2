## Put comments here that give an overall description of what your
## functions do
#caching inverse of a matrix
#change the mean function and apply it to the matrix function

## Write a short comment describing this function
#The function create matrix object and cache its inverse
makeCacheMatrix <- function(x = matrix()) {
inv<-NULLset<-function(y){
  x<<-y
  inv<<-NULL
  ｝
  get<-function()x
  setInverse<-function(inverse)inv<<-inverse
  getInverse<-function()inv
  list(set=set,
       get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function

#If the inverse already gotton, it would retrive the solution gotton above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
