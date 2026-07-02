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


##converting a exiting variable as a factor

x3 <- c(1:3)
df3 <- cbind.data.frame(x3,y)

df3
str(df3)

df3$x3 <- factor(df3$x3, levels = c(1,2,3))
str(df3)


###########################################

x4 <- c(1:3)
df4 <- cbind.data.frame(x4,y)
df4$x4 <- factor(df4$x4,levels = c(1,2,3),labels = c("windows","macos","linux"))
df4
typeof(df4$x4)
str(df4)
