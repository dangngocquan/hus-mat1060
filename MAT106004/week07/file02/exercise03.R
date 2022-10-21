# Exercise 03

getResult <- function(n) {
  tempSum <- 0
  for (tempNum in seq(1, n, 2)) {
    tempSum <- tempSum + tempNum*(tempNum+2)*(tempNum+4)
  }
  return (tempSum)
}
