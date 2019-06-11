library(tidyverse)
#load the mpg dataset from ggplot2 library
mpg
#take a glance of mpg dataset
str(mpg)

#draw scatter plot for mpg data and set x-axis as displ
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#use the gapminder dataset for plot
ggplot(data = gap) + 
  geom_point(mapping = aes(x = Year, y = life))

#map the aesthetics to the variables in the plot to differenciate class of each car
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#map class to the alpha aesthetic
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))


#map class to the shape aesthetic
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#map the aesthetic manually
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "green" , shape = 0)

#shape of points is unfilled square, color is specified by different car class
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class) , shape = 0)


#then subplot the data so we can split the visualization into facets
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

#use facet_grid() to plot the combination of two variables
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

#smooth the points 
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
