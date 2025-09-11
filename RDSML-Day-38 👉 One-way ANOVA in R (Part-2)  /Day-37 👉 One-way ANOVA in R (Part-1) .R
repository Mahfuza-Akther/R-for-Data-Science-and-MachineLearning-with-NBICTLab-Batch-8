# One-way ANOVA
# Importing the dataset
PlantGrowth <- PlantGrowth

# importing the dplyr library
# install.packages("dplyr")
library(dplyr)
# Computing the group means, sd, and se
stats <- PlantGrowth %>%
  group_by(group) %>%
  summarise(
    mean = mean(weight),
    sd = sd(weight), 
    se = sd(weight) / sqrt(n())
  )

print(stats)

# Creating group wise box plots
boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
)

#install.packages("ggpubr")
library(ggpubr)
ggline(PlantGrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter")
       )
# Running the ANOVA test
anova <- aov(weight ~ group, data = PlantGrowth)
summary(anova)








