# Import dependecies
library(ggplot2)
library(tidyverse)

# set working directory
setwd("C:/Users/Saurabh/Desktop/640/Week 7&8")

#load datasets
df <- read.csv("C:/Users/Saurabh/Desktop/640/Week 7&8/birth-rates-yearly.csv")
df1 <- read.csv("C:/Users/Saurabh/Desktop/640/Week 7&8/crimerates-by-state-2005.csv")
df1
df

# filter birth year. remove duplicate year dates
df %>% distinct()
df2 <- df %>% distinct(year,.keep_all = TRUE)
df2

#filter df1
df1_filter <- df1[!(df1$state == 'United States' | df1$state == 'District of Columbia'),]
df1_filter

#scatterplot
ggplot(df2, aes(x= year, y= rate)) + geom_point(color = 4)

#bubblechart
ggplot(df1_filter, aes(x=robbery, y= burglary, size = state, color = state)) + geom_point(alphar= 0.4)

#density plot chart
d <- density(df2$rate)
plot(d, main = "Birth Rate Per Decade From 1960-2008")
polygon(d, col= 'red', border = 'blue')
