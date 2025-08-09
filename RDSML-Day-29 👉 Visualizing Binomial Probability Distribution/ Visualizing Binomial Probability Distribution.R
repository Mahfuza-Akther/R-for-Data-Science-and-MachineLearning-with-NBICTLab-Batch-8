dbinom(x = 4, size = 10, prob = 0.5)
pbinom(q = 4, size = 10, prob = 0.5)

n <- c(0:10)
n

p <- dbinom(x = n, size = 10, prob = 0.5)
barplot(p)

library(visualize)

# In visulalize pacage, we have to write stat instead of 'x'
visualize.binom(stat = 4, size = 10, prob = 0.5, section = 'lower')

pbinom(q = 4, size = 10, prob = 0.5)

# if we want =/>4  head
visualize.binom(stat = 4, size = 10, prob = 0.5, section = 'upper')

# if we want 4/5/6  head
visualize.binom(stat = c(4,6), size = 10, prob = 0.5, section = 'bounded')

# if we want =/<3 or =/>7  head
visualize.binom(stat = c(3,7), size = 10, prob = 0.5, section = 'tails')

# if we want exactly 4  head(for this, we need a Grid line)
visualize.binom(stat = 4, size = 10, prob = 0.5)
grid(nx = NULL, ny= NULL, col = "grey", lty = "dotted")



