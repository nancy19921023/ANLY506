# import libraries
library(readr)

#read csv file and assign data types for each column
week2data <- read_csv("C:/Users/nanli/Desktop/HU/ALNY506/CodePortfolio/US EPA data 2017.csv")

#remove any spaces in the column names
names(week2data) <- make.names(names(week2data))

#count how many rows in the dataset
nrow(week2data)

#count how many columns in the dataset
ncol(week2data)

#we can also check the number of rows and columns at once
str(week2data)

#display 
#check the first few observations in the dataset
#the code below reads the first 4 rows of the dataset
head(week2data, 4)

#the code below reads the bottom 4 rows of the dataset
tail(week2data, 4)
