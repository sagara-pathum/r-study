library(datasets  )
?lynx

head(lynx)

hist(lynx)

hist(lynx,
     freq=FALSE,
     breaks = 14,
     main = paste("Data set Lynx","Histogram")
     )

curve(dnorm(x, mean=mean(lynx),sd = sd(lynx)),
      col = "thistle4",
      lwd = 2,
      add = TRUE
      )

lines(density(lynx), lwd = 2, col ="red")
lines(density(lynx,adjust=3), lwd =2 , col = "green")


rug(lynx,col = "gray",lwd =2)
