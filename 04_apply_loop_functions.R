# split airquality data frame by month
s <- split(airquality, airquality$Month)

# apply mean on Ozone, Solar.R, and Wind columns for every "month-list"
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

# sapply to simplify the result
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

# remove NAs
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))
