#title:HIstogram Plot
#Basic Data Graphics
#Author:Hrishikesh Tripathi
#Plotting Histogram using iris data #####
library(datasets)


#Load data
head(iris)

#Basic Histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Histogram BY groups

#put graphs in  rows and column

par(mfrow=c(3,1)) #par is used to pass parameter,c is  used for concatenate,where 3 represent  Number of  rows and 1 number of  column

hist(iris$Petal.Width [iris$Species=="setosa"],
     xlim=c(0,3),
     breaks = 9,
     main = "Petal width for setosa",
     xlab="",
     col="red" )

hist(iris$Petal.Width[iris$Species=="versicolor"],
     xlim=c(0,3),
     breaks=9,
     main = "Petal width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "yellow")

#restore graphic parameter
par(mfrow=c(1,1))

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

#:):

