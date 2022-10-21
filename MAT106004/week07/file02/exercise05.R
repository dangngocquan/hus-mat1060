# Exercise 05

lengthNum <- function(n) {
  return (nchar((as.character(n))))
}

productDigits <- function(n) {
  result <- 1
  while (n > 0) {
    result <- result * (n %% 10)
    n <- n %/% 10
  }
  return (result)
}

lengthNum(123)
productDigits(12345)
