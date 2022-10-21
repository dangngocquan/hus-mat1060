# Exercise 01

airPassengers <- AirPassengers
airPassengers
tempMatrix <- matrix(data = airPassengers, 
                     ncol = 12, byrow = TRUE)
tempMatrix

# 1)
mean(tempMatrix[,1])

# 2)
averageEachYear <- apply(tempMatrix, MARGIN = 1, FUN = mean)
averageEachYear

# 3)
averageEachMonth <- apply(tempMatrix, MARGIN = 2, FUN = mean)
averageEachMonth

