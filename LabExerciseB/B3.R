#Author: Dhaval Shah(Student Id: 1535740)

#########################
## Loading the dataset ##
#########################

speciesData <- read.csv("Data Set 4.csv", na.strings = "");

par(mfrow=c(1,1))
with(speciesData, plot(Petal.Length, Petal.Width, xlim = c(0,8), ylim=c(0.0,3.0),xlab="Petal Length",ylab="Petal Width"))

model<-lm(speciesData$Petal.Width~speciesData$Petal.Length)
lines(speciesData$Petal.Length,model$fitted.values, col="red")

summary(speciesData$Species)

with(subset(speciesData, Species=="setosa"), points(Petal.Length, Petal.Width, col = "black"))
with(subset(speciesData, Species=="versicolor"), points(Petal.Length, Petal.Width, col = "blue"))
with(subset(speciesData, Species=="virginica"), points(Petal.Length, Petal.Width, col = "green"))

setosaData <- subset(speciesData, Species=="setosa")
setosaModel<-lm(setosaData$Petal.Width~setosaData$Petal.Length)
lines(setosaData$Petal.Length,setosaModel$fitted.values, col="black")

versicolorData <- subset(speciesData, Species=="versicolor")
versicolorModel<-lm(versicolorData$Petal.Width~versicolorData$Petal.Length)
lines(versicolorData$Petal.Length,versicolorModel$fitted.values, col="blue")

virginicaData <- subset(speciesData, Species=="virginica")
virginicaModel<-lm(virginicaData$Petal.Width~virginicaData$Petal.Length)
lines(virginicaData$Petal.Length,virginicaModel$fitted.values, col="green")


setosaError <- setosaModel$fitted.values - setosaData$Petal.Width
setosaMSE <- mean(setosaError^2)
print(setosaMSE)

versicolorError <- versicolorModel$fitted.values - versicolorData$Petal.Width
versicolorMSE <- mean(versicolorError^2)
print(versicolorMSE)

virginicaError <- virginicaModel$fitted.values - virginicaData$Petal.Width
virginicaMSE <- mean(virginicaError^2)
print(virginicaMSE)


##Question: 3(7)
par(mfrow=c(1,1))
with(speciesData, plot(Sepal.Length, Sepal.Width, xlim = c(4,10), ylim=c(1.0,6.0),xlab="Sepal Length",ylab="Sepal Width"))

model<-lm(speciesData$Sepal.Width~speciesData$Sepal.Length)
lines(speciesData$Sepal.Length,model$fitted.values, col="red")

summary(speciesData$Species)

with(subset(speciesData, Species=="setosa"), points(Sepal.Length, Sepal.Width, col = "black"))
with(subset(speciesData, Species=="versicolor"), points(Sepal.Length, Sepal.Width, col = "blue"))
with(subset(speciesData, Species=="virginica"), points(Sepal.Length, Sepal.Width, col = "green"))

setosaData <- subset(speciesData, Species=="setosa")
setosaModel<-lm(setosaData$Sepal.Width~setosaData$Sepal.Length)
lines(setosaData$Sepal.Length,setosaModel$fitted.values, col="black")

versicolorData <- subset(speciesData, Species=="versicolor")
versicolorModel<-lm(versicolorData$Sepal.Width~versicolorData$Sepal.Length)
lines(versicolorData$Sepal.Length,versicolorModel$fitted.values, col="blue")

virginicaData <- subset(speciesData, Species=="virginica")
virginicaModel<-lm(virginicaData$Sepal.Width~virginicaData$Sepal.Length)
lines(virginicaData$Sepal.Length,virginicaModel$fitted.values, col="green")

setosaError <- setosaModel$fitted.values - setosaData$Sepal.Width
setosaMSE <- mean(setosaError^2)
print(setosaMSE)

versicolorError <- versicolorModel$fitted.values - versicolorData$Sepal.Width
versicolorMSE <- mean(versicolorError^2)
print(versicolorMSE)

virginicaError <- virginicaModel$fitted.values - virginicaData$Sepal.Width
virginicaMSE <- mean(virginicaError^2)
print(virginicaMSE)