library(datasets)
head(iris)

plot(iris$Species)

hist(iris$Sepal.Length)

par(mfrow = c(3,1))

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 10,
     main = "Petal Width of setosa",
     xlab = "",
     col = "red"
     )

hist(iris$Petal.Width[iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 10,
     main = "Petal Width of versicolor",
     xlab = "",
     col = "purple"
     )

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 10,
     main = "Petal Width of virginica",
     col = "blue",
     xlab = "Petal width of folowers"
     )


par(mfrow = c(1,1))
detach("package:datasets")
