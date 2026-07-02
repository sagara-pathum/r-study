n1 = 3
n1 
typeof(n1)

n2 = 1.5
n2 
typeof(n2)

c1 = "c"
c1
typeof(c1)

c2 <- "hello world"
c2
typeof(c2)

l1 <- T
l1
typeof(l1)

v1 <- c(1,2,3,4,5,6)
v2 <- c("a","b","c","d","e")
v3 <- c(T,F,T,F,F,F,F,F,T)

v1
v2
v3

typeof(v1)
typeof(v2)
typeof(v3)

is.vector(v1)
is.vector(v2)
is.vector(v3)

m1 <- matrix(c(T,F,T,F,F,T,T,F,T),nrow = 2)
m1

m2 <- matrix(c("a","b","c","d"),row = 2,byrow = TRUE)
m2

