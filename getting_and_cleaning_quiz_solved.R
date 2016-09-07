library(dplyr)
library(data.table)
# 
# A <- read.csv("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/quiz.csv")
# 
# agricultureLogical <- A$ACR == 3 & A$AGS == 6
# which(agricultureLogical)

# library(jpeg)

# to know what functions are enlisted in a package
# lsf.str(envir = asNamespace("jpeg"), all = T)

# A <- readJPEG("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/getdata%2Fjeff.jpg", native = TRUE)
# quantile(A, probs = c(0.3, 0.8))

edu <- read.csv("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/edu.csv")
gdp <- fread("/home/rogelio/Desktop/datasciencecoursera/Getting_and_Cleaning_Data_Week3/gdp.csv")

A <- merge(edu, gdp, by.x = "CountryCode", by.y = "V1", all = TRUE)

#lots of observations with that entry empty ""
A <- subset(A, A$`Gross domestic product 2012` != "")

#ranking numbers expressed as characters
A <- mutate(A, `Gross domestic product 2012` = as.numeric(`Gross domestic product 2012`))

#omit NA's
A <- A[order(-A$`Gross domestic product 2012`, na.last = NA),]

#visualize head of df
#head(A, n = 20)

table(A$Income.Group)
tapply(A$`Gross domestic product 2012`, A$Income.Group, mean)

A <- A[order(A$`Gross domestic product 2012`, na.last = NA),]

# 38 countries of highest GDP
A1 <- A[1:38,]

# how many low income countries are there in the first 38
sum(A1$Income.Group == "Lower middle income")
