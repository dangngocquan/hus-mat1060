setwd("D:/Study/R/MAT1060")
x = c(1, 2, 3, 4, 5)
x
x[1]
x[-1]
x[c(TRUE, FALSE, TRUE, TRUE, TRUE)]
y = c(3, 3, 0, 0, 1)
y
x + y
list1 = list(
  x = x,
  y = y,
  z = c("ABC", "DEF")
)
list1
list1$x

v1 = c("A", "B")
v2 = c("C", "D")
v1
v2
y = factor(y)
y
y[1]
y[2]
y[5]
M = matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
M
