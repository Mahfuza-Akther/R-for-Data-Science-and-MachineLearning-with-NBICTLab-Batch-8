# Importing the data set
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Creating the basic histogram 
ggplot(dataset, aes(x = weight))+
  geom_histogram(color ="white")

#Changing histogram plot line colors by groups
ggplot(dataset, aes(x = weight, fill = sex))+
  geom_histogram(color ="white", alpha = 0.5, position = "identity")

# We can change the position adjustment to use for overlaping 
# points on the layer possible values fr the argument are 'Identity', "stack",
# "dodge". Default value is "Stack".

# Interleaved histogram
ggplot(dataset, aes(x = weight, fill = sex))+
  geom_histogram(color ="white", alpha = .5, position = "dodge") +
  theme(legend.position = "top")

# The 'plyr' package is used to calculate the mean weight of each group
#install.packages("plyr")
library(plyr)
group_means = ddply(dataset, 'sex', summarise, grp.mean = mean(weight))
group_means

# Adding mean line
myPlot = ggplot(dataset, aes(x = weight, fill = sex))+
  geom_histogram(color ="black", alpha = .5, position = "dodge") +
  geom_vline(data = group_means, aes(xintercept = grp.mean, 
                                     color = sex), linetype = "dashed") +
  theme(legend.position = "top")
myPlot

#Using custom color palettes
myPlot + scale_color_manual(values = c("#999999","#e69F00")) + 
  scale_fill_manual(values = c("#999999","#e69F00"))

# Using brewer color palettes
myPlot + scale_color_brewer(palette = "Dark2") +
  scale_fill_brewer(palette = "Dark2")














