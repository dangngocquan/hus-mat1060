# Exercise 02

A <- matrix(data = c(1, 5, 3, -1), nrow = 2)
A
B <- matrix(data = c(7, 3, 3, 7), nrow = 2)
B

C <- solve(A) %*% B
C
