#install.packages("ggplot2")
#library(ggplot2)
install.packages("farver")
library(farver)
install.packages("ggplot2")
library(ggplot2)
dataset = mtcars
View(dataset)

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()

# Chnagin the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=9)

# Adding the reggression line
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=9) +
  geom_smooth()