# Exercise 01

airPassengers <- AirPassengers
airPassengers
tempMatrix <- matrix(data = airPassengers, 
                     ncol = 12, byrow = TRUE)
tempMatrix

# 1)
mean(tempMatrix[,1])

# 2)
for (row in 1:length(tempMatrix[,1])) {
  print(mean(tempMatrix[row,]))
}

# 3)
for (column in 1:12) {
  print(mean(tempMatrix[,column]))
}

