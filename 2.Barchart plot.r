#title:Barchart Plot
#Basic Data Graphics
#Author:Hrishikesh Tripathi

library(datasets) #loading data packages

head(mtcars)

barplot(mtcars$cyl) #displays all the o/p without categorizing 

cylinders<-table(mtcars$cyl) #using table will create a container of variable cyl
barplot(cylinders) #this will plot the container which is used to classify the variable cyl and dislays all the value of cyl
plot(cylinders) #a thin line will be displayed x/y axis.


# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L
 
#:):
