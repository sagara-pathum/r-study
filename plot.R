library(datasets)
head(iris)

plot(iris$Species)
plot(iris$Species,
     col = "#cc0000",
     main = "iris flowers",
     xleb = "flower",
     yleb = "quantity"
     )

plot(iris$Petal.Width,iris$Petal.Length)
plot(iris$Petal.Length,iris$Sepal.Width)

plot(iris)

plot(iris$Species,iris$Petal.Length)

detach("package:datasets",unload=TRUE)
head(iris)
