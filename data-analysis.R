# Short R script adapted from Software Carpentry data lesson 
library("ggplot2")

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/master/data/gapminder_data.csv", destfile = "gapminder_data.csv")
gapminder <- read.csv("gapminder_data.csv", header=TRUE)

summary(gapminder$country)
head(gapminder)

seAsia <- c("Myanmar","Thailand","Cambodia","Vietnam","Laos")

## extract the `country` column from a data frame (we'll see this later);
## convert from a factor to a character;
## and get just the non-repeated elements
countries <- unique(as.character(gapminder$country))


ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
