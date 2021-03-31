#title:ScatterPlot
#Basic Data Graphics
#Author:Hrishikesh Tripathi
#Scatterplots is used when two variables are linear,spreaded,Outliers and find any correalation or
# any association.

#Load dataset Package
library(datasets)

?mtcars
head(mtcars)


#PLOTS ################################

#First check univariate/One variable distributions

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt,mtcars$mpg)

#adding some options
plot(mtcars$wt,mtcars$mpg,
     pch=19,  #Solid Circle shape
     cex=1.5, #Make 150% size
     col="red",
     main = "MPG as a function of weight of cars",
     xlab="Weight(in 1000 pounds)",
     ylab = "MPG")

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

#:):
