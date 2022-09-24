# Exercise 04

# data
A = matrix(data = c(2, 1, 5, 4, 5, 3, 9, 2, 3, 9, 4, 8, 4, 3, 8, 1), nrow = 4)
B = matrix(data = c(3, 4, 7, 9, 9, 1, 2, 2, 5, 4, 2, 8, 1, 2, 4, 3), nrow = 4)

# 1)
A[2, 3]

# 2)
A[2,]

# 3)
A[, 3]

# 4)
B[-2,]

# 5)
B[, -2]

# 6)
t(A)

# 7)
det(B)

# 8)
solve(A)

# 9)
A %*% B
