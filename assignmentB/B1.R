#Author: Dhaval Shah(Student Id: 1535740)

#########################
## Loading the dataset ##
#########################

salesData1 <- read.csv("Data Set 1a.csv", na.strings = "");
salesData2 <- read.csv("Data Set 1b.csv", na.strings = "");

##########################
## Cleaning the dataset ##
##########################
salesData1$Quantity = as.numeric(salesData1$Quantity)

levels(salesData1$Product)	<- c(levels(salesData1$Product),	"Galaxy Edge S8")
salesData1$Product[salesData1$Product	== "Galaxi Edge S8"]	<- "Galaxy Edge S8"

names(salesData1)[names(salesData1)=='Name']<-'Customer'

salesData1$Quantity[salesData1$Quantity=="one"]<-"1"
salesData1$Quantity[salesData1$Quantity=="two"]<-"2"

salesData1$Customer[salesData1$Customer == "ALice"] <- "Alice"

library(lubridate);
salesData1$Date<-dmy(salesData1$Date);

#Merging the dataset

mergedData = merge(salesData1,salesData2,"Product")

#Converting Unit
Calculate.Rate <- function(arg1){ 
  if (arg1=='NZD') {out<-1} 
  if (arg1=='AUD') {out<-1.2}  
  return(out)
}

mergedData["Exchange.Rate"] <- sapply(mergedData$Currency,Calculate.Rate)
mergedData$Unit.Price.NZD <- mergedData$Unit.Price*mergedData$Exchange.Rate

###########################################################
# 1. Omitting all the transactions made before 1 Jan 2010 #
###########################################################
filteredSalesData <- subset(mergedData, mergedData$Date > as.Date("2010-01-01"))

library(plyr)
library(zoo)
###############################
# 2. Calculating monthly sale #
###############################
filteredSalesData$Quantity = as.numeric(filteredSalesData$Quantity)

filteredSalesData$Month <- as.yearmon(filteredSalesData$Date)
GroupColumns <- c('Month')
DataColumns <- c('Quantity','Unit.Price.NZD')
monthWiseSale <- ddply(filteredSalesData,GroupColumns,function(x) colSums(x[DataColumns]))

monthWiseSale$Month = as.character(monthWiseSale$Month)

###################################################
# 3. Visualizing the results (monthly total sale) #
###################################################
par(mfrow=c(1,2))

barplot(monthWiseSale$Quantity, names.arg=monthWiseSale$Month, xlab = "Month", ylab = "Quantity", main="Monthly sales by quantity", col="red")
barplot(monthWiseSale$Unit.Price.NZD, names.arg=monthWiseSale$Month, xlab = "Month", ylab = "Unit Price(NZD)", main="Monthly sales by unit price", col="blue")
