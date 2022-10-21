# Exercise 01

checkNum <- function(num) {
  tempSum <- 0
  tempNum <- 1
  while (tempSum < num) {
    tempSum <- tempSum + tempNum
    tempNum <- tempNum + 1
  }
  return (tempSum == num)
}


