powerConsumption <- read.csv("DataSet.txt",sep = ";")

png(file='plot2.png')
boxplot(subset(powerConsumption, Voltage==237)$Global_active_power, col = "red", xlab="Global Active Power", main="Global Active Power (kilowatts) for Voltage 237")
dev.off()