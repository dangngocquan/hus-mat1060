# data
A = matrix(c(1, 5, 6, 3, 2, 1, 4, 9, 3), ncol = 3)
B = matrix(c(1, 3, 5, 2, 9, 8, 6, 1, 4), ncol = 3)

# a)
t(A)
t(B)

# b)
det(A)
det(B)

# c)
solve(A)
solve(B)

# d)
A %*% B
solve(A) %*% B %*% A
