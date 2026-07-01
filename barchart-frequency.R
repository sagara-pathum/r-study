library(datasets)

head(iris)

barplot(iris$Sepal.Length)

cylinder <- table(iris$Sepal.Length)
barplot(cylinder)



detach("package:datasets",unload=TRUE)
