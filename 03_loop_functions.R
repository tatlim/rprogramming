
## lapply ##
# mean of some vectors
x <- list(a = 1:4, b = rnorm(10))
lapply(x, mean)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

# generate some uniform random numbers
x <- 1:4
lapply(x, runif)    # default: runif(x, min = 0, max = 1)

# random numbers between 0 and 10
lapply(x, runif, min = 0, max = 10)

# use anonymous functions
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
x
# extract 1st column (using anonymous function)
lapply(x, function(elt) elt[,1])

## sapply ##
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
# sapply simplifies the result; in this case returns a vector (instead of a list)
sapply(x, mean)

# mean does not work with lists (but vectors)
# that's why loop functions are so useful
mean(x)

## apply ##
x <- matrix(rnorm(200), 20, 10)
head(x)
# apply 'mean' on the 2nd dimension (columns)
apply(x, 2, mean)
# apply 'sum' on the 1st dimension (rows)

# for 'sum' and 'mean' there are already optimized functions available
colMeans(x)         # same as: apply(x, 2, mean)
rowSums(x)          # same as: apply(x, 1, sum)
# colSums() and rowMeans() are also available.

# calculate 25% quantile for each row (MARGIN = 1)
apply(x, 1, quantile, probs = 0.25)
# calculate 25% and 75% quantile for each row (MARGIN = 1)
apply(x, 1, quantile, probs = c(0.25, 0.75))
# calculate 25%, MEDIAN and 75% quantile for each row (MARGIN = 1)
apply(x, 1, quantile, probs = c(0.25, 0.5, 0.75))

# this also works for arrays with more than 2 dimensions
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)
# optimized function also works with multiple dimensions
# dims = 2: calculate 'mean' for first and second dimension - third dimension will be collapsed to 'means'
rowMeans(a, dims = 2)


## mapply ##
# applies a function over the elements of multiple lists
# instead of
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
# you can use
mapply(rep, 1:4, 4:1)


noise <- function(n, mean, sd) {
    rnorm(n, mean, sd)
}

noise(5, 1, 2)
# this does not work
noise(1:5, 1:5, 2)
# but with 'mapply' our noise function can be vectorized
mapply(noise, 1:5, 1:5, 2)


## tapply ##
x <- c(rnorm(10), rnorm(10), rnorm(10, 1))
f <- gl(3, 10)
tapply(x, f, mean)
tapply(x, f, mean, simplify = FALSE)


## split ##
# splits a vector into a list of vectors, according to used factor
split(x, f)

# tapply already splits the given vector
# so these two are the same
lapply(split(x, f), mean)
tapply(x, f, mean, simplify = FALSE)
