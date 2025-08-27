#Two sample t test/ Independent T test 
# Importing T test
dataset <- read.csv("scores.csv")

#Checkinfg for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

# We have to check the SD/varience( measure of disperstion)
# is the varience are statistically significant then we will 
#apply one type of formula but if there is no variation , then another 
# formula will be applied

# chcking of the homgogenity of varience
var.test(x = dataset$Male, y = dataset$Female)

# Running the independent sample T test
t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)
