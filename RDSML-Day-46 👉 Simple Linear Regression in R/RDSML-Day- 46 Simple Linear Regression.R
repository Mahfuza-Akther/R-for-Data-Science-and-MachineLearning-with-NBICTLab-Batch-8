# Simple linear reggression
dataset <- read.csv("Salary_Data.csv")
View(dataset)
# Splitting the data set into training and test set
installed.packages("caTools")
library(caTools)
set.seed(123)
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split== FALSE)
View(training_set)

# Fitting the Simple Linear Regression model to the training set y lm= Linear Model
regressor <- lm(formula = Salary ~ YearsExperience ,
                data = training_set)




