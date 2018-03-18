# get working directory
getwd()

# set working directory to $HOME
setwd("~")
getwd()

# set it back to project directory
setwd("~/wrk/studio/rprogramming/")
getwd()

# list directory contents
dir()
dir("data/")
# read data from a file
wages <- read.csv("data/wages.csv")
head(wages)

# list all objects
ls()

# create a new function
myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

# list R objects
ls()

# execute the new function
myfunction()
myfunction()

# read in another function from an R file
source("yourfunction.R")
# execute the function
yourfunction(3)
yourfunction(4:10)

# auto-print an integer sequence (not in a script)
s <- 11:50
s
# explicitly print s
print(s)
