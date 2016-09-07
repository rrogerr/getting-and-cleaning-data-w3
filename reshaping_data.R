library(data.table)
# data("mtcars")
# 
# mtcars$carnames <- rownames(mtcars)
# 
# Makes two copies of all observations one organized by values of mpg and the other 
# by values of hp
# carMelt <- melt(mtcars, id = c("carnames", "gear", "cyl"), measure.vars = c("mpg", "hp"))
# 
# cylData <- dcast(carMelt, cyl ~ variable)
# 
# cylData <- dcast(carMelt, cyl ~ variable, mean)
# 
# head(cylData)

# data("InsectSprays")
# 
# count_by_spray <- tapply(InsectSprays$count, InsectSprays$spray, sum)
# head(count_by_spray)
# 
# split_by_spray <- split(InsectSprays$count, InsectSprays$spray)
# lapply(split_by_spray, sum)

# library(plyr)
# 
# ddply(InsectSprays, .(spray), summarize, sum = sum(count))
# 
# replicates the sum of all cases beside each case
# ddply(InsectSprays, .(spray), summarize, sum = ave(count, FUN = sum))


##########################repetition##########################

dat <- data.frame(x = LETTERS, y = rnorm(26), z = rep(1:2, len = 13))
# dat

# dat_melt <- melt(dat, id = "x", measure.vars = c("y", "z"))
# 
# dcast(dat_melt, x ~ variable)
# 
# dcast(dat_melt, x ~ variable, mean)

tapply(dat$y, dat$z, mean)