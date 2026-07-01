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

