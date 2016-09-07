library(plyr)

x <- rnorm(20)
y <- rnorm(20)
u <- rep(c(3, 2, 1, 4), each = 5)

z <- data.frame(x, y, u)

arrange(z, x)

# sort by u, and then by x
arrange(z, u, x)

#straightforward way of adding a column to the dataset

# z$q <- rnorm(20)
# 
# z