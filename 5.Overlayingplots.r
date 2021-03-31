#title:OVerlayingPlot
#Basic Data Graphics using R
#Author:Hrishikesh Tripathi
#OVerlayingPlot using Lynx data

#Load data Package
library(datasets)

#Annual Canadian Lynx trappings 1821–1934
?lynx
head(lynx)

hist(lynx)          #default plotting

#Adding Options
hist(lynx,
     breaks = 14,        #Suggests 16 bins
     freq = FALSE,       #axis will show density not freq
     col = "thistle1",   #col for histogram
     main = paste("Histogram of Annual Canadian Lynx",
                   "Trappings, 1821-1934"),
     xlab = "number of lynx trapped")

#adding normal distribution
curve(dnorm(x,mean = mean(lynx), sd=sd(lynx)),
      col="thistle4", #Color 
      lwd=2,          #width of the line
      add=TRUE)       #superimposed on the previous graph

#adding two kernel density estimators

lines(density(lynx),col="green",lwd=2)
lines(density(lynx,adjust = 3),col="purple",lwd=2)

#adding rug plot
rug(lynx,lwd = 2,col = "pink")



# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

#:):





