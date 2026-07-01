library(datasets)

?mtcars
head(mtcars)

plot(mtcars$wt,mtcars$mpg)

plot(mtcars$wt,mtcars$mpg,

     pch = 19,
     cex = 1.5,
     col = "red",
     xlab = "Weight of cars in 1000 pounds",
     ylab = "Miles per Galloon",
     main = "Weight vs Miles per Galloon"
     )

detach("package:datasets", unload = TRUE)
