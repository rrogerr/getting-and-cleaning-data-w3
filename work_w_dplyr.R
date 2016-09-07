library(dplyr)

A <- data.frame(x = rnorm(26), y = LETTERS, z = rep(1:2, len = 13), w = sample(1:20, 26, replace = TRUE))

# select
select(A, z:w)
select(A, -x)
select(A, -(z:w))

# filter
filter(A, w > 10)

# arrange
arrange(A, w)
arrange(A, desc(w))

# rename
A <- rename(A, xxx = x)
A

# mutate
A <- mutate(A, w1 = w - mean(w, na.rm = TRUE))
A

# summarize
