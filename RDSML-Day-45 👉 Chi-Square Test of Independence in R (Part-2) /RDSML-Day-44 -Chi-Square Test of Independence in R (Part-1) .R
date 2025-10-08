# Importing the data set
housetasks <- read.delim("housetasks.txt", row.names = 1)

# What is the chi-square test of independence?
# = For frequency table analysis 
#Contingency table can e visualized using the function ballonplot 
#(This function draws a graphical matrix where each cell
# contains a dot whose reflects the relative magnitude 
#of the correspondig component)

install.packages("gplots")
library("gplots")
data_table <- as.table(as.matrix(housetasks))
balloonplot(t(data_table), main = "Housetasks Visualization",
            label = F, show.margins = F,
            xlab = "", ylab = "")

# Its also possible to visualize the cobtingency table
# as a mosic plot, this can be done using the function 
# mosicplot()from the built-in R package graphics
library("graphics")
mosaicplot(data_table, shade = T, las = 2, main = "Housetasks")
# Blue color indicates that the observed value and the 
#red color indicate the observed valoue is lower than expected value 
#value

# Computing the chi-square test in R
chisq <- chisq.test(housetasks)
chisq

# Observed counts and expected counts housetasks
# Observed counts 
chisq$observed
# Expected counts
round(chisq$expected, 2)

#Residuals calculation
chisq$observed - round(chisq$expected, 2)

# Standardized ( or Pearson) residuals calculation
round(chisq$residuals, 3)

# Adjusted Standardized Residuals calculation
chisq$stdres

# Visualize Pearson residuals using the package corrplot
install.packages("corrplot")
library(corrplot)
corrplot(chisq$residuals, is.cor = FALSE)


# Contribution in percentage (%)
contrib <- 100 * chisq$residuals^2 / chisq$statistic
round(contrib, 3)
# Visualize the contribution
corrplot(contrib, is.cor = FALSE)
#The Final Result

