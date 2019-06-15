library(tidyverse)
library(nycflights13)

#draw bars
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

#count down how many observations
diamonds %>% count(cut)

#draw histogram
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.7)

#use filter to pick observations
smaller <- diamonds %>% 
  filter(carat < 4)

#draw lines compared with histogram
ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

#choose binwidth for histogram
ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.7)
ggplot(data = faithful, mapping = aes(x = eruptions)) + 
  geom_histogram(binwidth = 0.35)

#making a new variable 
nycflights13::flights %>% 
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time %/% 100,
    sched_min = sched_dep_time %% 100,
    sched_dep_time = sched_hour + sched_min / 60
  ) %>% 

#show the new variable
  ggplot(mapping = aes(sched_dep_time)) + 
  geom_freqpoly(mapping = aes(colour = cancelled), binwidth = 1/4)
  ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = reorder(class, hwy, FUN = median), y = hwy))

#use geom_bin2d() and geom_hex() to bin in two dimensions
  ggplot(data = smaller) +
  geom_bin2d(mapping = aes(x = carat, y = price))
  
#install.packages("hexbin")
  ggplot(data = smaller) +
    geom_hex(mapping = aes(x = carat, y = price))
  