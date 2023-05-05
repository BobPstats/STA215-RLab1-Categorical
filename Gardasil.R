## Uncomment and run this if you haven't already run this command in your R session
# library(epiDisplay)


## Read the data from a CSV file into the dataframe named gv
gv <- read.csv("GardasilVaccine.csv")

## Define three factor variables for categorical analysis
gv$Race <- factor(gv$Race, 
                  levels=c(0, 1, 2, 3),
                  labels=c( 'White', 'Black', 'Hispanic', 'other/unknown'))
gv$Completed <- factor(gv$Completed, 
                       levels=c(0, 1),
                       labels=c( 'No', 'Yes'))
gv$InsuranceType <- factor(gv$InsuranceType, 
                           levels=c(0, 1, 2, 3),
                           labels=c('med asst', 'private', 'hospital', 'military'))


## Two-way analysis with Race as explanatory variable


## InsuranceType as explanatory variable

