#Creating a data frame
dataset = data.frame(dose = c("D0.5","D1","D2"), 
                     len = c(4,10,29.5))

library(ggplot2)

#Basic Barplot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")

#Horizontal bar plot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")+
  coord_flip()

#Changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", width = .5)

#Changing colors
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", color = 'blue', fill = 'white', width = .5)

#Minimal theme + blue fill color
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", color = 'blue', fill = 'steelblue')+
  theme_minimal()

#Barplot with labels(Outside bars)
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity",fill = 'steelblue')+
  geom_text(aes(label = len), vjust = -.5, size = 3, color = "#e4667788") +
  theme_minimal()

#Barplot with labels(Intside bars)
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity",fill = 'steelblue')+
  geom_text(aes(label = len), vjust = 1.5, size = 3, color = "white") +
  theme_minimal()

myCarData= mtcars
View(myCarData)

#Barplot of counts
#To make a barplot of counts, we will use mtcars data sets
ggplot(data = myCarData, aes(x = factor(cyl)))+
  geom_bar(stat = "count", width = 0.7, fill = "gray")+
  theme_minimal()



#Changing barplot line colors by groups
#Using custom color palettes
#Using brewer color palettes
#Using a grey scale
#Changing barplot fill colors by groups
#Using custom color palettes
#Using brewer color palettes
#Using a grey scale
#Using a black outline color
#Changing the legend position
#Changing bar fill colors to blues
#Removing legend
