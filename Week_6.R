library(tidyverse)

#this data frame contains all 336,776 flights that departed from New York City in 2013
library(nycflights13)
flights
View(flights)

#use (filter()) to pick observations by their values 
feb1 <- filter(flights, month == 2, day == 1)
filter(flights, month == 10 | month == 9)
filter(flights, arr_delay <= 100, dep_delay <= 100)

#use (arrange()) to re-order the rules
arrange(flights, desc(dep_delay))


#use (select())to pick variables by their name
select(flights, year, month, day)
flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time)

#create new variables with (mutate())
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60)

#to summarize 
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))