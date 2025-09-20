# Explaining rbinorm()
# rbinorm(n, size, prob), it generates random numbers from a 
#binomial distribution, Here: 
# n: Number of random values to generate
# size: Number of trials in each binomial experiment
#prob: Probability of success in each trial

rbinom(n = 10, size = 1, prob = 0.5)

# Here: 
# 10 --> Number of random values to generate (n =10)
# 1--> Number of trials in each binomial experiment (size = 1)
# 0.5 -> probability of success on each trial (prob = 0.5)

rbinom(n = 10, size = 5, prob = 0.5)
rbinom(n = 20, size = 10, prob = 0.5)

# Explaining pbinom()
# pbinom() gives the cumulative probability of getting q or fewer 
# successes in a binomial distribution
# syntax: pbinom (q, size, prob), Here:
# q = the number of successes
# size = Number of trials
# prob = Probability of success in each trial

pbinom(q = 5, size = 10, prob = 0.5)
pbinom(q = 8, size = 20, prob = 0.5)

# The result means, there's about a 62.3% chance of getting 5 or fewer successes
# in 10 trials(e.g., getting 5 or fewer heads in 10 fair coin tosses)

# You toss a coin 5 times, what is the probability of getting exactly 3 heads?
pbinom(q = 3, size = 5, prob = 0.5) - pbinom(q = 2, size = 5, prob = 0.5)

# Explaining qbinom()
# What is the smallest number of successes x in 10 trials 
# (with 50% success chance) such that the probabiliy of getting x or fewer 
# successes is at least 30%?

qbinom(p = 0.30, size =10, prob= 0.5)

# here, p= 0.3--> cumulative probability(30%)
# size = 10 --> no. of trials (e.g., 10 coin tosses)
# prob = 0.5 --> Probability of success


#explaining dbinom()
# Calculating the probabilityof getting exact number of success
dbinom(x = 3, size = 5, prob = 0.5)
dbinom(x = 3, size = 10, prob = 0.25)

# syntax, dbinom(x, size, prob)
# Here,x = 3---> Number of successes you want
# size = 5---> no. of trials (e.g., 10 coin tosses)
# prob = probability of success





