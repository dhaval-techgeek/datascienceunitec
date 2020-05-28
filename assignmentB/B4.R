#Author: Dhaval Shah(Student Id: 1535740)

#########################
## Loading the dataset ##
#########################
electricityConsumptionData <- read.csv("Data Set 5.csv", na.strings = "");

par(mfrow=c(1,3))
with(electricityConsumptionData, plot(Size, KW, xlab="X", ylab="Y", main="Observed Data"))

model<-lm(electricityConsumptionData$KW ~ electricityConsumptionData$Size)
lines(electricityConsumptionData$Size, model$fitted.values, col="red")
linearRegError <- model$fitted.values - electricityConsumptionData$KW
linearRegMSE = mean(linearRegError^2)
print(linearRegMSE)

with(electricityConsumptionData, plot(Size, KW, xlab="X", ylab="Y", main="Observed Data"))
model <-lm(electricityConsumptionData$KW ~ poly(electricityConsumptionData$Size,2))
lines(electricityConsumptionData$Size, model$fitted.values, col="red")
PolyRegOrd2Error <- model$fitted.values - electricityConsumptionData$KW
PolyRegOrd2MSE = mean(PolyRegOrd2Error^2)
print(PolyRegOrd2MSE)


with(electricityConsumptionData, plot(Size, KW, xlab="X", ylab="Y", main="Observed Data"))
model <-lm(electricityConsumptionData$KW ~ poly(electricityConsumptionData$Size,3))
lines(electricityConsumptionData$Size, model$fitted.values, col="red")
PolyRegOrd3Error <- model$fitted.values - electricityConsumptionData$KW
PolyRegOrd3MSE = mean(PolyRegOrd3Error^2)
print(PolyRegOrd3MSE)




