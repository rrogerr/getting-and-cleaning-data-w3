setwd("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week4/")

# data_idaho <- read.csv("./idaho.csv")
#
# strsplit(names(data_idaho), "wgtp")[123]

gdp <- fread("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/gdp.csv")
ggdp <- gdp$V5[gdp$V5 != "" & gdp$V5 != "(millions of" & gdp$V5 != "US dollars)"]
# ggdp
# ggdp <- gsub(",", "", ggdp)
# ggdp <- as.numeric(ggdp)
# ggdp <- ggdp[-(214:227)]
# mean(ggdp, na.rm = TRUE)
edu <- read.csv("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/edu.csv")
gdp <- fread("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/gdp.csv")
A <- merge(edu, gdp, by.x = "CountryCode", by.y = "V1", all = TRUE)

table(grepl("Fiscal year end: [Jj]une",A$Special.Notes))