setwd("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/")
library(stringr)

if(!file.exists("./data_cameras")){dir.create("./data_cameras")}
urll <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(urll, destfile = "./data_cameras/cameras.csv", method = "curl")
camData <- read.csv("./data_cameras/cameras.csv")

# names(camData)
# 
# tolower(names(camData))
# 
# names(camData)

# splitnames <- strsplit(names(camData), "\\.")
# 
# splitnames[[6]]
# 
# strsplit("aubucud", "\\u")
# 
# firstelement <- function(x){x[1]}
# 
# sapply(strsplit(names(camData), "\\."), firstelement)

# sub("a", "e", names(camData),)

# gsub replaces all instances, while sub replaces just one
# sub("_", "", "bla_bla_bla")
# gsub("_", "", "bla_bla_bla")

# finding instances of a string
# grep("Erdman", camData$intersection)

# return boolean vector with the instances set to 1
# grepl("Erdman", camData$intersection)

# database with instances dropped
# noErdman <- camData[!grepl("Erdman", camData$intersection),]
# head(noErdman, n = 10)

# instead of giving the indices, gives the values
# grep("Erdman", camData$intersection, value = TRUE)

# subsetting strings
# substr("Rogelio Caballero Perez", 9, 17)

str_trim("rrogerr    ")