# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
  geom_smooth(method = lm)
# which line we get is called "Line of the best Fit"

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se =FALSE) 

# Loess method (Loess line: where a regression line 
# develop for the neighboring scattered dots)
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# Changing the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
  geom_smooth(method = lm, linetype = "dotted", 
              color = "darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size= .5, shape= 22, color = "brown") +
  geom_smooth(method = lm, linetype = "dotted", 
              color = "darkblue", fill = "pink")

# Scatter plots with multiple group

# changing the point shape by the level of 'cyl' (For this we have to convert the 
# 'cyl' numeric to factor variable)

dataset$cyl = as.factor(dataset$cyl)
class(dataset$cyl)
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# changing point shapes and color
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

# Changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()






