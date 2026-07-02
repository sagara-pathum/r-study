##accessing data

################################################################################
FACTORS
################################################################################

factors are working with categeries and names with those catagories

factor is an attribute of a vector that specifies the possible values and their order

first create some data

(x1 <- 1:3)
(y <- 1:9)

df1 <- as.data.frame(cbine(x1,y))

//here you will see the programe repeated the data for empty value of x1


//see the datatype using 'typeof()'
//see the datasrycure using 'str()'

typeof(df1)
typeof(df1$x1)
str(df1)

//see the structure it is also says that x1 is a repeated sequence of 1 2 3 eventhough it is not

//so we can change that using factors

(x2 <- as.factor(c(1:3)))

df2 <- cbind.data.frame(x2, y)

typeof(df2$x2)
str(df2)



//you can also define a exiting variable as a factor

x3 <- c(1:3)
df3 <- cbind.data.frame(x3,y)
df3$x3 <- factor(df3$x3, levels = c(1,2,3))

typeof (df3$x3)
str(df3)


/////////we can use this for labeling our data as well as told abouve

x4 <- c(1:3)
df4 <- cbind.data.frame(x4,y)
df4$x4 <- factor(df4$x4,levels = c(1,2,3),labels = c("Apple", "macos", "linux"))
df4
typeof(df4$x4)
str(df4)


/////////we can also change the order of those things
x5 <- c(1:3)
df5 <- cbind.data.frame(x5,y)
df5
df5$x5 <- order(df5$x5, levels=c(3,1,2),labels=c("No","Maybe","Yes"))
df5
