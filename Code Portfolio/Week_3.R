# Data Wokflow Importing, Saving, and Managing
getwd()


#list down object available in current workspace
ls()

#remove specific objects in workspace
a1 <- 3
b1 <- 8 
rm(a,b)

#remove all objects from workspace
rm(list = ls())

#get present working directory
getwd()

#modify working directory to mentioned path
setwd(dir = "C:/Users/nanli/Desktop/HU/ALNY506/CodePortfolio/Files")

#datafram creation
tempdf <- data.frame(id = 1:5, name = c("Anurag", "Isha", "Farahan","Jay", "George"), age = c(20, 51, 67, 42, 52))
tempdfagg <- aggregate(age ~ name, FUN = mean, data = tempdf)

tempcol <- data.frame(id = 1:5, color = c("black", "white", "black", "black", "white"), number = c(20, 51, 67, 42, 52))
temptest <- t.test(number ~ color, data = tempcol)

#save those mentioned objects in .RData
save(tempdf, tempcol, temptest, file = "sample.Rdata")

#save all objects in .Rdata
save.image(file = "fulldata.Rdata")

#fetch data from saved .Rdata file
load(file = "fulldata.Rdata")

#and then write data in file
write.table(x = tempcol, file = "tempcol.txt",   sep = "\t", row.names = FALSE)  
write.table(x = tempcol, file = "tempcol.csv",   sep = ",", row.names = TRUE)
write.table(x = tempdf, file = "tempdf.txt",   sep = "\t") 
write.table(x = tempdf, file = "tempdf.csv",   sep = ",") 

