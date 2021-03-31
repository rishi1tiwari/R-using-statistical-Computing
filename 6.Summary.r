#title:Using Summary 
#Basic Data Graphics
#Author:Hrishikesh Tripathi


library(datasets)

head(iris)

summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

#:):
