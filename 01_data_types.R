# atomic objects (primitive data types) are:
#   - character
#   - numeric (n <- 1)
#   - integer (i <- 1L)
#   - complex
#   - logical

x <- 1  # numeric (1.0)
y <- 1L # integer

# infinity
i <- Inf
1/i   # is 0

# NaN - not a number
n <- 0/0
n

# attributes
# R objects can have attributes like
#   - names, dimnames
#   - dimentions (e.g. matrices, arrays)
#   - class
#   - length
