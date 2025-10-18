# Multiple Linear Regression

# Importing the dataset
dataset <- read.csv("50_Startups.csv")

# Encoding the categorical data
dataset$State <- factor(dataset$State,
                        levels = c('New York', 'California', 'Florida'),
                        labels = c(1, 2, 3))

# Splitting the dataset into the Training Set and Test Set
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting the Multiple Linear Regression Model to the Training Set
regressor <- lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State, 
                data = training_set)
summary(regressor)

#Predicting the Test set results
y_pred <- predict(regressor, test_set)
y_pred

# Stepwise Backward Elimination
regressor <- lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, 
                data = training_set)
summary(regressor)

regressor <- lm(formula = Profit ~ R.D.Spend + Marketing.Spend, 
                data = training_set)
summary(regressor)

# Automated Stepwise Backward Elimination
full_model <- lm(Profit ~ ., data = training_set)
summary(full_model)

final_model <- step(full_model, direction = "backward")
summary(final_model)

cor(training_set$R.D.Spend, training_set$Profit, method = 'pearson')
cor.test(training_set$R.D.Spend, training_set$Profit, method = 'pearson')
cor.test(training_set$Marketing.Spend, training_set$Profit, method = 'pearson')
plot(training_set$R.D.Spend, training_set$Profit)

plot(final_model)

# Checking for independence of errors (should be nonsignificant)
# install.packages("lmtest")
library(lmtest) 
dwtest(final_model)

# Normality of Residuals 
shapiro.test(rstandard(final_model))
qqnorm(rstandard(final_model))
qqline(rstandard(final_model))  

# Checking multicollinearity (should be <5=very good, <10= acceptable)
install.packages("car")
library(car)
vif(final_model)

# Homoscedastically assumpsion
plot(final_model$fitted.values, rstandard(final_model))
abline(h=0,col="red")
bptest(final_model)




