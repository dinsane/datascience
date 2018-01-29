#World Peace Data Analysis
#Goal is to see how peaceful today is compared to history

#load in data from csv
conflictdata <- read.csv(file="C:/Users/dsane/Downloads/Conflict Catalog 18 vars.csv", header=TRUE, sep=",")

#check descriptive info on data set
summary(conflictdata)
#look at structure of data
str(conflictdata)
#get variable names
names(conflictdata)
#look at top 6 records
head(conflictdata)
tail(conflictdata)
#load ggplot
install.packages("ggplot2")
library(ggplot2)
help(package = ggplot2)
#create graph of the data
qplot(conflictdata$StartYear, conflictdata$TotalFatalities, conflictdata)
ff <- ggplot(conflictdata, aes(StartYear, TotalFatalities))
ff+geom_jitter()

#read in data for world population by year
popdata <- read.csv(file="C:/Users/dsane/OneDrive/Documents/datascience/API_SP.POP.TOTL_DS2_en_csv_v2.csv", header=TRUE, sep=",")

summary(popdata)

#remove columns to subset data
popnumbers <- subset( popdata, select = -c(1:4))
popnumbers <- subset( popnumbers, select = -c(ncol(popnumbers)))


colSums(data.matrix(popnumbers))



