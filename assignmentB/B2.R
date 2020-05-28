#Author: Dhaval Shah(Student Id: 1535740)

#########################
## Loading the dataset ##
#########################

skullData <- read.csv("Datasets/Data Set 3.csv", na.strings = "");

#Question:2(1)

par(mfrow=c(2,2))
hist(skullData$L, col = "blue", main="Histogram of L", xlab="L")
hist(skullData$H, col = "blue", main="Histogram of H", xlab="H")
hist(skullData$N, col = "blue", main="Histogram of N", xlab="N")
hist(skullData$B, col = "blue", main="Histogram of B", xlab="B")

dev.off() ## resetting par to default: par(mfrow=c(1,1)) can also be used to reset par.

#Question:2(2)

par(mfrow=c(2,2))
plot(density(skullData$L), main="Density Function of L")
plot(density(skullData$H), main="Density Function of H")
plot(density(skullData$N), main="Density Function of N")
plot(density(skullData$B), main="Density Function of B")

dev.off() ## resetting par to default: par(mfrow=c(1,1)) can also be used to reset par.

#Question:2(3)

library(e1071)
skewness(skullData$L)
kurtosis(skullD0ata$L)

skewness(skullData$H)
kurtosis(skullData$H)

skewness(skullData$N)
kurtosis(skullData$N)

skewness(skullData$B)
kurtosis(skullData$B)

#Question:2(4)

par(mfrow=c(1,4))
boxplot(skullData$L, main="L", ylim = c(40,150))
boxplot(skullData$H, main="H", ylim = c(40,150))
boxplot(skullData$N, main="N", ylim = c(40,150))
boxplot(skullData$B, main="B", ylim = c(40,150))
dev.off() ## resetting par to default: par(mfrow=c(1,1)) can also be used to reset par.

#Question:2(5)

mean(skullData$L)
var(skullData$L)
sd(skullData$L)

mean(skullData$H)
var(skullData$H)
sd(skullData$H)

mean(skullData$N)
var(skullData$N)
sd(skullData$N)

mean(skullData$B)
var(skullData$B)
sd(skullData$B)
