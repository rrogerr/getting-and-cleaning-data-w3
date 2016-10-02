d2 <- Sys.Date()

# %d = day as number (0-31), %a = abbreviated weekday, %A = unabbreviated weekday, 
# %m = month (00 - 12), %b = abbreviated month, %B = unabbreviated month, %y = 2 digit year
# %Y = 4 digit year

# format(d2, "%Y, %B, %A, %d")

# how to format messy dates
x <- c("1991oct07", "1967mar07", "1950jul01")
# y <- as.Date(x, "%Y%b%d")
# y
# 
# format(y[1], "%a")
# 
# y[2] - y[1]
# 
# weekdays(y[2])

library(lubridate)

ymd(x)
mdy("04061551")
dym("18200905")

hms("11:59:59")

