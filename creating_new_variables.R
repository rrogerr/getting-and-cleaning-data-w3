if(!file.exists("./data_restaurants")){dir.create("./data_restaurants")}
urll <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(urll, destfile = "./data_restaurants/restaurants.csv", method = "curl")
restData <- read.csv("./data_restaurants/restaurants.csv")

restData$zipGroups <- cut(restData$zipCode, breaks = quantile(restData$zipCode))

table(restData$zipGroups, restData$zipCode)