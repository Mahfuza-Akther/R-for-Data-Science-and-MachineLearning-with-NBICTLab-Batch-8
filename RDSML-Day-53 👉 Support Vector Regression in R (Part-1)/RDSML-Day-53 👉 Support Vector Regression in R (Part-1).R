# Setup : pacakages and data loading
# install.packages(c("e1071", "ggplot2", "dplyr"))

library(e1071)
library(ggplot2)
library(dplyr)

# loading the Data set

dataset <- read.csv("day.csv")

# Basic cleaning and feature selection
bike <- dataset %>%
  select(cnt, temp, atemp, hum, windspeed, season, yr, mnth, holiday,
         weekday, workingday, weathersit)

str(bike)

# Convert categorical variables to factors
bike <- bike %>%
  mutate(
    season = factor(season),
    yr = factor(yr),
    mnth = factor(mnth),
    holiday = factor(holiday),
    weekday = factor(weekday),
    workingday = factor(workingday),
    weathersit = factor(weathersit)
  )

# Training / test split
set.seed(123)
n <- nrow(bike)
n
indices <- seq_len(n)
train_idx <- sample(indices, size = 0.7 * n)
train_idx
train_set <- bike[train_idx, ]


test_set <- bike[-train_idx, ]



