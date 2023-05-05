## Install and then load the epiDisplay package
install.packages("epiDisplay")
library(epiDisplay)


## Read data from a CSV file into a datafame. Then take a glimpse at its structure.
sta215 <- read.csv("STA215Students.csv")
str(sta215)

## List all values of Class (delete this after trying)
sta215$Class

## Define factor columns
class_levels <- c("Freshman", "Sophomore", "Junior", "Senior")
sta215$Class <- factor(sta215$Class, class_levels)


## One-way analysis using the epiDisplay function tab1()
tab1(sta215$Class)


## Two-way analysis using the epiDisplay function tabpct()
tabpct(sta215$Class, sta215$Live)
