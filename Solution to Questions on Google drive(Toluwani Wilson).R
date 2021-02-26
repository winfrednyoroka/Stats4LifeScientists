#Question 2
#importing female mice weights.csv file to Global Environment
weights <- read.csv("femaleMiceWeights.csv", header = TRUE)
mean(weights$Bodyweight)
sd(weights$Bodyweight)
list(weights$Bodyweight)
chowdiet <- list(21.51,28.14,24.04,23.45,23.68,19.79,28.40,20.98,22.51,20.10,26.91,26.25) 

chowdiet <- c(21.51,28.14,24.04,23.45,23.68,19.79,28.40,20.98,22.51,20.10,26.91,26.25)
result.mean <- mean(chowdiet)
print(result.mean)

chowdiet <- c(21.51,28.14,24.04,23.45,23.68,19.79,28.40,20.98,22.51,20.10,26.91,26.25)
result.sd <- sd(chowdiet)
print(result.mean)

hfdiet <- list(25.71,26.37,22.80,25.34,24.97,28.14,29.58,30.92,34.02,21.90,31.53,20.73)
hfdiet <- c(25.71,26.37,22.80,25.34,24.97,28.14,29.58,30.92,34.02,21.90,31.53,20.73)
result.meanhf <- mean(chowdiet)
print(result.meanhf)

hfdiet <- list(25.71,26.37,22.80,25.34,24.97,28.14,29.58,30.92,34.02,21.90,31.53,20.73)
hfdiet <- c(25.71,26.37,22.80,25.34,24.97,28.14,29.58,30.92,34.02,21.90,31.53,20.73)
result.sdhf <- sd(chowdiet)
print(result.sdhf)



#Question 1
#A function that calculates the mean of 3 numbers
mean <- function(value1,value2,value3,length){
  result.mean <- (value1+value2+value3)/(length)
  return (result.mean)
}
#Example
mean(2,4,6,3)
mean <- 4 #implementing result of [mean(2,4,6,3) to prove the validity of the function]
