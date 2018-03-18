#   for loop
## 4 kinds of for loops
x <- c("a", "b", "c", "d")

for (i in 1:4) {
  print(x[i])
}

for (i in seq_along(x)) {
  print(x[i])
}

for (letter in x) {
  print(letter)
}

for (i in 1:4) print(x[i])

# nested loops
m <- matrix(1:6, nrow = 2, ncol = 3)
# output by row
for (i in seq_len(nrow(m))) {     # loop over the rows...
  for (j in seq_len(ncol(m))) {     # then over the columns.
    print(m[i,j])
  }
}


# while loop
z <- 5
while (z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if (coin == 1) {
    z <- z + 1
  } else {
    z <- z - 1
  }
}



# repeat
s <- 0
repeat {
  s <- s + 1
  print(s)
  if (s == 10) {
    break         # BREAKS the whole (infinite) loop
  }
}

# next
for (i in 1:10) {
  if (i <= 3) {
    print("skipped...")
    next        # go no with NEXT iteration
  }
}

# functions

# sums up two variables
add2 <- function(x, y) {
  x + y       # the last expression is implicitly returned
}

add2(3, 5)
add2(17, 4)

# function that receives a vector and returns one with all values > 10
above10 <- function(x) {
  use <- x > 10
  x[use]
}

above10(1:15)


# more general function where minimum value can be specified
above <- function(x, y = 10) {
  use <- x > y
  x[use]
}

above(1:20)
above(1:20, 15)

# function that returns means of all columns
columnmean <- function(x, rmNA = TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(x[, i], na.rm = rmNA)
  }
  means
}

columnmean(airquality)
columnmean(airquality, rmNA = FALSE)
