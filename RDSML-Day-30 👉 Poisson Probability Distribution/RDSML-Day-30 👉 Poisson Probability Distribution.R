# Atleast 3 or less call per hour
ppois(q = 3, lambda = 5)

# for exactly 3 call
ppois(q = 3, lambda = 5) - ppois(q = 2, lambda = 5)
# or
dpois(x = 3, lambda = 5)

# Visualizing of Poisson probability Distribution

n <- seq(0,5)
n

# If average call 5 per hour, 
#then what will be the probability of 0-5 call
barplot(dpois(x = n, lambda = 5))

# If average call 10 per hour, 
#then what will be the probability of 4 or less calls
# By visualize package

library(visualize)
visualize.pois(stat = 4, lambda = 10)

# If average call 10 per hour, 
#then what will be the probability of 8 or less calls
# By visualize package
visualize.pois(stat = 8, lambda = 10, section = "upper")

# If average call 10 per hour, 
#then what will be the probability of 4-6 calls
# By visualize package
visualize.pois(stat = c(4,6), lambda = 10, section = "bounded")

# If average call 5 per hour, 
#then what will be the probability of 2-3 calls
# By visualize package
visualize.pois(stat = c(2,3), lambda = 5, section = "bounded")

# If average call 5 per hour, 
#then what will be the probability of exactly 3 calls
# By visualize package
visualize.pois(stat = c(3,3), lambda = 5, section = "bounded")

# If average call 5 per hour, 
#then what will be the probability of less than2, more than 5 calls
# By visualize package

visualize.pois(stat = c(2,5), lambda = 5, section = "tails")



