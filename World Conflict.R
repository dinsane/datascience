#World Peace Data Analysis
#Goal is to see how peaceful today is compared to history

#load in data from csv
mydata <- read.csv(file="C:/Users/dsane/Downloads/Conflict Catalog 18 vars.csv", header=TRUE, sep=",")

#check descriptive info on data set
summary(mydata)
#look at structure of data
str(mydata)
#get variable names
names(mydata)
#look at top 6 records
head(mydata)
tail(mydata)