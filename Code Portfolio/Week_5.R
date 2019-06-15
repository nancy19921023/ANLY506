library(tidyverse)

#chose the gapminder dataset as example
#transform the anual income in Ks
gapnew %>% mutate(income_in_thousands = income/1000)

#track how cases increase through years
library(ggplot2)

ggplot(table1, aes(year, cases)) +
  geom_line(aes(group = country), colour = "grey50") +
  geom_point(aes(colour = country))

#use the imbeded dataset to compute the rate per 10k
table1 %>% mutate(rate = cases/ population *10000)

#tidy embedded table4 
#as we find that 1999 and 2000 are not actually column names
#so we want to combine 1999 and 2000, abd put key as 'year'
tidy4a <- table4a %>%
  gather(`1999`, `2000`, key = "year", value = "cases")

#same to table4b
tidy4b <- table4b %>%
  gather(`1999`, `2000`, key = "year", value = "population")

#join the above two tables by country and year
left_join(tidy4a, tidy4b)

#then let's try to spread the dataset
table2 %>% 
  spread(key = type, value = count)

#also practice seperate function, which is used to pull apart one column into several columns
table3 %>%
  separate(rate, into = c("cases", "population"))

#unite function 
#is used to combine several columns into one single column
table5 %>%
  unite(new, century, year, sep = "_")

