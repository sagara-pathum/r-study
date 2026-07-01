following the course : freecodecamp /R Programming Tutorial - Learn the Basics of Statistical Computing
recorces (downloaded to CourseFiles folder): https://drive.google.com/drive/folders/15U8WjVKbYXaq6N6Wb_6bCr9QZ1DwCkAO 

####################################################################################
OVERLAYING
####################################################################################

note : just because you can do thing doesnt mean you should do it
note : use view that complement and support one another

{
library(lynx)
head(lynx)

lynx is a time series dataset. so it has one single variable.

hist(lynx)
this shows in x axis how many lynx were trapped in a year, in y axis how many such years havebeen

lets make it more cleaner. in the following code we have desabled the 'freq' attribute. so that it does not show the freequency of data point, it shows the density of datapoints as a percentage of all data.

further here 'paste' command is used. so that we can pass separate strings at once.

hist(lynx,
    breaks = 14,
    freq = FALSE,
    col = "thistle1",
    main = paste("Histogram of Annual Canadian Lynx","Trappings, 1821-1934"),
    xlab = "Number of Lynx Trapped"
}


now we plot a normal distribution curve on thop of the histogram.

here what we want to do is get an idea about the result , how far they are normal.

we can use 'curve' to draw the curve.
'dnorm' to make a normal distribution. if we are making a normal distribution we need to give the mean and standard deveation. so we give the using our datas values.
'lwd' here is a command for adjusting the line width

'add = TRUE' is the command to make it top on the previous graph

curve(dnorm(x, mean = mean(lynx)m sd = sd(lynx)),
    col = "thistle4",
    lwd = 2,
    add = TRUE
)

now lets do something cool. lets add 'kernel density estimator to our graph'. this things are also like bell curves but they try to follow the distribution of data.

here we use 'lines' to draw
we use 'density' to get density estimator
and we can add more attributes if we want
further we can give 'adjust' parameter values to density estimator. it adjust how well it should be fit to be a bell curve.

{
lines(density(lynx) ,col ="blue",lwd=2)
lines(density(lynx,adjust = 3), col = "purple", lwd = 2)
}

we can further add a rug. it plot for each individual data oint undrt the x axis. for that

{
rug(lynx,lwd=2,col ="gray")
}
