setwd("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/")
library(stringr)

if(!file.exists("./data_cameras")){dir.create("./data_cameras")}
urll <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(urll, destfile = "./data_cameras/cameras.csv", method = "curl")
camData <- read.csv("./data_cameras/cameras.csv")

names(camData)

# sub("[Ss]treet|tion", "jajajaja", names(camData))

# sub("^a", "trol", names(camData))

A <- list("Rogelio O Caballero es un loco", "rogelio o Caballero es un canhon", "rogelio caballero tiene un OCD")

sub("[Rr]ogelio( [Oo])? [Cc]aballero", "yosh", A)