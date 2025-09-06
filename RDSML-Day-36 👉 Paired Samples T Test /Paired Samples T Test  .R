# Paired samples T test in R- Quantitative test(Conditions)
# 1. to detect the significant difference between 2 treatment of same 
#group of participants, 2. Differences should be normally distributed
#3. shouldn't have any extreme outlayer,
# Importing the data set
myDataset <- read.csv("paired-samples-t-test.csv")

# Calculating the difference
diffs <- myDataset$carb - myDataset$carb_protein

# Checking if the differences are normally distributed
shapiro.test(diffs)

# Checking for outlayer by using boxplot
boxplot(diffs)

# Paired samples t test
t.test(x=myDataset$carb,
       y=myDataset$carb_protein,
       paired = TRUE)
# Running the wilcoxon signed-rank test
#(If any condition does not support to do paired samples t tes)
wilcox.test(x=myDataset$carb,
            y=myDataset$carb_protein,
            paired = TRUE)

# Calculating the mean and sd
mean(myDataset$carb)
sd(myDataset$carb)

mean(myDataset$carb_protein)
sd(myDataset$carb_protein)

# Effect size calculation using Cohen's d
#if it is near 0.2 = small, 0.5 = medium, 0.8 = large
install.packages("effsize")
library(effsize)
cohen.d(myDataset$carb_protein, myDataset$carb, paired = TRUE)


# Result writing

# A paired-samples t-test was used to determine whether there was a 
# statistically significant mean difference between the distance rn
# when participants imbibed a carbohydtae-protein drink compared to a 
# carbohydrate-only drink. no outliers were ditected. The assumpsion of 
# normality was not violated,as assessed by Shapiro-wilk's test (p=0.780). 
# Participants ran further when imbibing the carbohydrate-protein drink 
# (Mean = 11.302 KM, SD = 0.713 KM) as opposed to the carbohydrate-only drink 
# (Mean = 11.167 KM, SD = 0.726 KM), a statistically significant mean increase of 0.135 KM, 
# 95% CI [0.091, 0.181], t(19) = 6.352, p <= 0.05, Cohen's d estimate: 0.187






