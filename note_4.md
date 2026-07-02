##########################################################################################
DATA TYPES AND STRUCTURES
##########################################################################################
sometimes we have to work with dirrent kind of data types and structures.

1 we can have data of defferent types
2 reguardless of type we can have defferent data structures

#Data Types

ex : integer, single, double, character, logical, complex, raw

#Data structures

you can arrange data in deffent ways reguarless of the type

ex : vector, matrix/array, data frame, list

1. vector

one more more numbers in a 1d array. all the data in same type. this is the R's basic structure. others are derivations of this

2. matrix

two dimentional. same length. all the data need to be of the same class. columns are not named. they are reffered by index numbers.

array is a higher dimentional matrix.

3. dataframe

this is a two dimensional collection that can have vectors of multiple types.

4. list 

the most flexible data structure in R. it is an ordered collection of elements. elements can belongs to any class, length, or structure. it also can include lists as well.


###NOTE : coercian :: changing a data oblject from one type to another.


* R is double precision by default in data types
we can use r command 'typeof()' to get a comfirmation of a data type

{
n1 <- 3
n1
typeof(n1)

n2 <-1.3
n2
typeof(n2)

c1 <- "c"
c1 
typeof(c1)

c2 <- "hello world"
c2
typeof(c2)

l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)
}


Data Structures

**vector

v1 <-c(1,2,3,4,5) //c here is used to concatanate. just think of it as combine or collection
v1
is.vector(v1)

v2 <- c("a","b","c")
v2
is.vector(v2)

v3 <- c(T,F,T,F,T,T)
V3
is.vector(v3)

**matrix

m1 <- matrix(c(T,T,F,F,T,F),nrow=2)
m1

m2 <- matrix(c("a","b","c","d"),nrow =2, byrow =TRUE)
m2
//byrow true kalama diga athata purawa purawa enne. naththm default thiyenne pahala athata purawanna

**array

here we have used : operator to say i want 1 through 24

a1 <- array(c(1:24), c(4,3,2)) // second part here is dimention of the array. it is in format of (rows,cols,tables)

a1

**dataframe

data frame can take defferent type of vectors. so lets initialize some vectors

vNumeric <- c(1,2,3)
vCharacter <- c("a","b","c")
vLogical <- c(T,F,T)

now lets bind them using column bind 'cbind' command

dfa <- cbind(vNumeric,vCharacter,vLogical)
dfa

see here if we use 'cbind' it is convert every data into most generic type it can. not to do so we should tell it to cosider vectors data combination as a dataframe. using 'as.data.frame'

df <- as.data.frame(cbind(vNumeric,vCharacter,vLogical))
df

**list

lets make three object here

o1 <-c(1,2,3)
o2 <-c("a","b","c","d")
o3 <-c(T,F,T,T,F)

now make them a list of objects

list1 <- list(o1,o2,o3)
list1

we can enter list inside a list as well

list2 <- list(o1,o2,o3,list1)
list2

##COERCION - converting data 

1. goes to least restrictive datatype

(coerce1 <- c(1, "b", T))
typeof(coerce)

2.coerce numeric to integer

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

3. coerce character to numeric

(coerce4 <- c("1","2","3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1","2","3")))
typeof(coerce)

4. coerce matrix to dataframe

(coerce6 <- matrix(1:9, nrow=3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9,nrow=3)))
coerce7 //here it automatically assign the variable names
