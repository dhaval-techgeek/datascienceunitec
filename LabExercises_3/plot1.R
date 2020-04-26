powerConsumption <- read.csv("DataSet.txt",sep = ";")

png(file='plot1.png')
hist(subset(powerConsumption, Voltage==237)$Global_active_power, col = "red", main="Global Active Power", xlab="Global Active Power (kilowatts) for Voltage 237")
dev.off()
