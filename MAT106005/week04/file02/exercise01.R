# Exercise 01

# a)
pr <- c(9000, 9500, 9400, 9400, 10000, 9500, 10300, 10200)

# b)
averagePrice <- mean(pr)
averagePrice
edmundPrice <- 9500
if (averagePrice == edmundPrice) {
  print("Edmund price is equal to average price.")
}else {
  if (edmundPrice > averagePrice) {
    print("Edmund price is greater than average price.")
  }else {
    print("Edmund price is less than average price.")
  }
}

# c)
countPriceGreaterThanEdmundPrice <- length(which(pr > edmundPrice))
countPriceGreaterThanEdmundPrice
