following the course : freecodecamp /R Programming Tutorial - Learn the Basics of Statistical Computing
recorces (downloaded to CourseFiles folder): https://drive.google.com/drive/folders/15U8WjVKbYXaq6N6Wb_6bCr9QZ1DwCkAO 

####################################################################################
SUMMARY
####################################################################################
using 'summary()' we can take quantitative information about over dataset

but if you need more details like sample size, SD ,median, 10% trimmed mean, meadian absolute deviation , min/max, range, skewness, kurtosis, SE etc. you will need a seperate package

NOTE:for better presentation do graphical(graph) first then numbers.

{
install.packages("pacman")

pacman::p_load(pacman,dplyr,GGally,ggplot2,ggthemes,ggvis,httr,lubridate,p;otly,rio, rmarkdown,shiny,stingr,tidyr)

library(datasets)
head(iris)

p_load(psych) // for more detailed summary

you can get info on package
p_help(psych) //it opens pdf in web browser
p_help(psych,web=F) // it opens in R viewer

we can get the summery for quantitative variables using following way

describe(iris$Sepal.Length)
describe(iris)
}

####################################################################################
SELECTING CASES
####################################################################################

The Selecting Cases section focuses on techniques to filter your data in R. This is good handling subgroups, or creating simplified datasets for repeated tasks.

Key Methods for Selecting Cases

1. Selecting by Category

To isolate rows based on a categorical variable (like species in the iris dataset), you use square brackets [] to specify rows. 

Example: Histogram for only the 'versicolor' species

hist(iris$Petal.Length[iris$Species == "versicolor"])

2. Selecting by Numerical Value

When working with quantitative variables, you can use conditional operators to select cases based on specific thresholds:

Select values less than 2

hist(iris$Species[iris$Petal.Length < 2])

3. Using Multiple Selectors

You can combine multiple conditions using the ampersand (&).

Select 'virginica' with petal lengths less than 5.5

hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5])

4. Creating a New Subset Dataframe

If you plan to use a specific subset repeatedly. You use the assignment operator <- to make the subset. it has format of this [rows, columns]. 

if you leave the column or raw, all will be added for that

Create a new dataset containing only setosa irises

i.setosa <- iris[iris$Species == "setosa", ] //here you will get rows that is belongs to setosa with all dataset columns

