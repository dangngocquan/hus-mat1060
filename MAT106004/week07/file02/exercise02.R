# Exercise 02

getSecondMax <- function(a, b, c, d) {
  tempVector <- c(a, b, c, d)
  tempVector <- sort(tempVector)
  return (tempVector[3])
}
