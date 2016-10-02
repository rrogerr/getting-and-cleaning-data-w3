library(lubridate)

# complete list of time zones for use with libridate
# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
nyc <- now("America/New_York")

nyc + days(2)

depart <- update(nyc, hours = 17, minutes = 34)

# set time to another time zone
depart <- with_tz(nyc, "Asia/Hong_Kong")