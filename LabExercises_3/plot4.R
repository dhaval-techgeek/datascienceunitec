powerConsumption <- read.csv("DataSet.txt",sep = ";")

png(file='plot4.png')

par(mfrow=c(3,1))
hist(subset(powerConsumption, Sub_metering_2==0.000)$Global_active_power, col = "red", main="Global Active Power for Sub_metering_2 = 0.000", xlab="Global Active Power (kilowatts)", ylim=c(0,40000), xlim=c(0,8))
hist(subset(powerConsumption, Sub_metering_2==1.000)$Global_active_power, col = "red", main="Global Active Power for Sub_metering_2 = 1.000", xlab="Global Active Power (kilowatts)", ylim=c(0,6000), xlim=c(0,8))
hist(subset(powerConsumption, Sub_metering_2==2.000)$Global_active_power, col = "red", main="Global Active Power for Sub_metering_2 = 2.000", xlab="Global Active Power (kilowatts)", ylim=c(0,3000), xlim=c(0,8))
dev.off()