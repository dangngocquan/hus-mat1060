# Exercise 04

getSumDigits <- function(n) {
  sumDigits <- 0
  while (n > 0) {
    sumDigits <- sumDigits + (n %% 10)
    n <- n %/% 10
  }
  return (sumDigits)
}
