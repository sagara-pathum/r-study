x1 <-1:3
y <- 1:9

df <- as.data.frame(cbind(x1,y))
df

typeof(df)
typeof(df$x1)
str(df)

x2 <- as.factor(c(1:3))
df2 <- cbind.data.frame(x2,y) ##as.data.frame dont workd like this see bellow

typeof(df2$x2)
str(df2)

df2 <-as.data.frame(cbind(x2,y))
str(df2)
