
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
dim(outcome)    # 4706 rows, 46 columns
nrow(outcome)   # 4706
ncol(outcome)   # 46
str(outcome)

outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
names(outcome)
