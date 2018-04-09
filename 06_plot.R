data(cars)
plot(cars)
plot(cars, xlab = "Speed", ylab = "Stopping Distance")
plot(cars, col = 2) # red points; see ?par and ?points
plot(cars, main = "Maintitle")
plot(cars, sub = "Subtitle")
plot(cars, xlim = c(10, 15)) # limit x-axis to values between 10 an 15
plot(cars, pch = 2) # triangles instead of points
boxplot(formula = mpg ~ cyl, data = mtcars)
hist(mtcars$mpg)