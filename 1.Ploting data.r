#title=Plotting Data sets
#Basic Data Graphics
#author=Hrishikesh Tripathi


library(datasets) # TO load or unload datasets packages manually 

head(iris)        #Load Data

plot(iris$Species) #Plotting categorical variable
plot(iris$Sepal.Length,) #Plotting Quantitative Var
plot(iris$Species,iris$Petal.Length) #cat X Quant
plot(iris$Petal.Length,iris$Petal.Width) #quant pair
plot(iris) #plotting entire dataframe

#plot with options
plot(iris$Sepal.Length,iris$Sepal.Width,
     col="#66b3ff", #hexcode for yellow color
     pch=19,        #Symbol for ploting
     main = "Iris:Sepal Length vs Petal Width", #main label
     xlab = "Sepal Length", #x-axis label
     ylab = "Sepal Width"   #y-axis label   
     )
# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# :): 
