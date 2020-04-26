powerConsumption <- read.csv("DataSet.txt",sep = ";")

png(file='plot3.png')

with(subset(powerConsumption, Voltage>=249), plot(Voltage, Global_active_power))
with(subset(powerConsumption, Voltage>=249 && Voltage<249), points(Voltage, Global_active_power))
with(subset(powerConsumption, Voltage>=250), points(Voltage, Global_active_power, col = "red"))
title(main="Global Active Power (kilowatts) for Voltage >= 249")
legend("topright", pch=1, col=c("black","red"), legend=c("Voltage >= 249 & < 250","Voltage >= 250"))

dev.off()