x <- rnorm(20)

#get the indices of the elements that satisfy condition
x[which(x < 0.3 & x >-0.3)]

y <- rnorm(20)
z <- data.frame(x,y)
u <- rep(c(3, 2, 1, 4), each =5)
z <- data.frame(z, u)

#order by a specified column
z[order(z$y),]

#order by a specified column first, then inside each value of the first column
z[order(z$u, z$x),]
