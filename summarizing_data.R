# setwd("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/")
# 
# if(!file.exists("./data_restaurants")){dir.create("./data_restaurants")}
# urll <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
# download.file(urll, destfile = "./data_restaurants/restaurants.csv", method = "curl")
# restData <- read.csv("./data_restaurants/restaurants.csv")

# summary(restData)
# str(restData)
# 
# quantile(restData$councilDistrict)
# quantile(restData$councilDistrict, probs = c(0.25, 0.5, 0.9))

# any(is.na(restData$councilDistrict))

# all(restData$zipCode > 0)

# restData[restData$zipCode %in% c("21206","21223"),]

# data("UCBAdmissions")
# 
# DF <- as.data.frame(UCBAdmissions)
# 
# head(DF, n = 3)
# 
# summary(DF)
# 
# xt <- xtabs(Freq ~ Admit + Gender, data = DF)

# data("warpbreaks")

# warpbreaks$replicate <- rep(1:9, len = 54)
# xt <- xtabs(breaks~., data = warpbreaks)
# xt
# ftable(xt)

# checking size of data
# bdata <- rnorm(1e5)
# object.size(bdata)
# 
# print(object.size(data), units = "Mb")

#####################repetition########################
# setwd("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/")
# urlll <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
# download.file(urlll, destfile = "./data_restaurants/restaurantss.csv", method = "curl")
# restauData <- read.csv("./data_restaurants/restaurantss.csv")
# 
# quantile(restauData$councilDistrict, probs = c(0.2, 0.5, 0.9))

data("UCBAdmissions")

# DT <- as.data.frame(UCBAdmissions)
# 
# xtabs(Freq ~ Admit + Gender, data = DT)

a <- rep(1:3, len = 4)
b <- rep(1:3, len = 4)
c <- rnorm(4)

z <- data.frame(a, b, c)
z
xtabs(c ~ ., data = z)