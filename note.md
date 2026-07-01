following the course : freecodecamp /R Programming Tutorial - Learn the Basics of Statistical Computing
recorces (downloaded to CourseFiles folder): https://drive.google.com/drive/folders/15U8WjVKbYXaq6N6Wb_6bCr9QZ1DwCkAO 

there are two type of packages 
base. - already installed
contributed. - need to be downloaded

sites to download
-CRAN /comprehensive r archive network (cran.r-project.org)
-Crantastic /listing those in a good manner
-GitHub

most often use packages 
1.dplyer - manipulating dataframe
2.tidyr - cleaning up information
3.stringr - working with strings or text information
4.lubridate- manipulating date information
5.httr - working with website data
6.ggvis - grammer of graphics
7.ggplot2 - most common data visualization graphics
8.shiny - interactive applications that install on websites
9.rio - r input and output
10. rmarkdown - interactive notebook document

**one package to install them all - pacman (package manager)**

download : {install.packages("pacman")}
confirmation : {require(pacman)}
load : {library(pacman)} : {pacman::p_load(pacman,dplyr,....)}

unload : {p_unload(dplyr,tidr,...)} : {p_unload(all)} : for base packages {detach("package:datasets",unload = TRUE)}

####################################################################################
PLOT
####################################################################################
load R01_3_1_plot().R script

lets add the dataset that comes with R to our script
	{library(datasets)}
see the first few lines of iris dataset
	{head(iris)}
if you need help of plot command prefix ? before plot : {?plot}

examples/
to see categorical variables in dataset : plot(iris$Species)
to see quantitative variables in dataset : plot(iris$Petal.length)

plot attributes: col =  "#cc0000" //hex code
pch = 19 (point character)solid circles for points
main "main title"
xlab = "name of x axis"
ylab = "name of y axis" 

**plot command not only plot data. we can plot formulas as well.**
{plot(cos,0,2*pi) means plot cos function from zero to two times pi}
{plot(exp, 1, 5) means plot exponential function one to five}
{plot(dnorm, -3, 3) meas plot normal distribution from -3 to 3}

'lwd' attribute can be used with 'dnorm' to set the width of the plotting line.

####################################################################################
BAR CHARTS
####################################################################################

insert the dataset package.
then see the mtcars {?mtcar}
{head(mtcars)}

see following example that does not work that way. try it out. then look for how to plot a correct bar chart
{barplot(mtcars$cyl)}

make and table of the varible you need. then put it in a container frame using <- symbol
you can barplot the container. note that if you use plot instead of bar plot you will get a line chart.

{
cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinder)
}

####################################################################################
HISTOGRAM
####################################################################################

for data that is quantitative, scaled, measured, interval or ratio level.
it allow you to see what you have : you can see
shape - shape of the distribution
gaps - big empty space in distribution
outliers - unusual scores that can distort the data
symmetry - things like whether we have same number of high and low scores or do we have to do some adjustment
 
{
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
}

**lets see few histograms in onescreen as a grouop. that is more radable in datascince works

# put graphs in 3 rows and 1 column

we are doing it by changing a parameter 'mfrow' (multi frame row layout). here 'c' means concatanate which means treat this two numbers as one unit. first number is number of rows and second number is number of columns

{par(mfrow = c(3,1))}

now make the three histogrames seperately using a selector. which you select the specific categeory in squrebrackets. note that if you want a better comparison make a same limit for all x axis of histograms using 'xlim'. they will show in one image.

{
#1
hist(iris$Petal.Width p[iris$Speciessss == "setosa"],
 xlim = c(0,3),
 breaks = 9,
 main = "Petal Width for Setosa",
 xleb = "",
 cols = "red"
)

hist(iris$Petal.Width p[iris$Speciessss == "versicolor"],
 xlim = c(0,3),
 breaks = 9,
 main = "Petal Width for versicolor",
 xleb = "",
 cols = "purple"
)

hist(iris$Petal.Width p[iris$Speciessss == "virginica"],
 xlim = c(0,3),
 breaks = 9,
 main = "Petal Width for virginica",
 xleb = "",
 cols = "blue"
)
}

**note : if you changed a graphical parameter , remember to make it default.**
{par(mfrow=c(1,1))}
