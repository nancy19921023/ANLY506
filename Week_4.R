#import library
library(tidyverse)

#read csv file
heights = read_csv("C:/Users/nanli/Desktop/HU/ALNY506/CodePortfolio/heights.csv")

#read inline csv file
read_csv("a,b,c
         1,2,3
         4,5,6")

#parse a vector
str(parse_logical(c("TRUE", "FALSE", "NA")))

#parse a vector, and use "." to fill in the empty element
parse_integer(c("1", "231", ".", "456"), na = ".")

#parse numbers
parse_number("$150")

#use factors to parse
fruit <- c("apple", "orange")
parse_factor(c("apple", "orange"), levels = fruit)

#and then parse date
parse_date("2018-03-25")

#get the underlying representation of a string using charToRaw()
charToRaw("Hadley")

#find the corect encoding
x1 = "El Ni\xf1o was particularly bad this year"
parse_character(x1, locale = locale(encoding = "Latin1"))
guess_encoding(charToRaw(x1))

#find correct type
guess_parser("2018-03-25")
guess_parser(c("TRUE", "FALSE"))


#write and read RDS
write_rds(challenge, "challenge.rds")
read_rds("challenge.rds")
