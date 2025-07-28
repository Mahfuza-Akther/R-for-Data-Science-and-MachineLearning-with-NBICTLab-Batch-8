# rnorm = Random Normal Distribution= mean and sd will 
#be approximately 0 and 1 subsequently ( mean = near '0', sd = near '1')
x <- rnorm(100000, mean = 0, sd = 1)
mean(x)
sd(x)

y <- rnorm(100, mean =100, sd= 5)
mean(y)
sd(y)

#pnorm = 

# At z = 0 then the value of probability is 0.5 (pnorm usually represent the value of z, 
# which will calculate the pvalue)
pnorm(0)
pnorm(-1.96)
pnorm(1.96)
pnorm(-1.64) 
# (z value+- 1.64, then 10%data will be outside)

#qnorm usually take the value of probability to calculate the z value
qnorm(0.5)
qnorm (.025)

# dnorm usually take the z value and give output
# Y axis value for z = 0
dnorm(0)

#lets use the dnorm to draw the normal distribution.
zvalues <- seq(-4.0, 4.0, by = 0.1)
dvalues <- dnorm(zvalues)
dvalues

plot(zvalues, dvalues)
