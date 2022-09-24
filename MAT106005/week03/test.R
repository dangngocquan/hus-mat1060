# Math
x = -2
abs(x)
sqrt(12)
sin(1)
cos(1)
tan(2)
log(1)
log10(10)
exp(2)
round(12.4)

y = c(1, 0, 4)
sqrt(y)
exp(y)

#Matrix
A = matrix(c(1, 2, 3, 4, 5, 6), nrow=2)
A
t(A)

B = matrix(c(1:8, 10), nrow=3)
B
det(B)
solve(B)

A %*% B

C = matrix(c(1, 0, 0, 0, 0, 0), nrow=2)
A*C

D = matrix(1: 2, nrow=1)
D

# Print
print(t(B))

# 
z = c(1, 2, 3, 8, 10, 15)
z
mean(z)
median(z)
var(z)
sd(z)
sqrt(var(z))
min(z)
max(z)

#
v1 = c(2, 3, 1, 5, 4)
v1
sum(v1)
prod(v1)
length(v1)
sort(v1)
v1
seq(1, 5)
seq(1, 3)
seq(5, 2)
seq(1, 10, 2)
v1
rep(v1[1:3], times = 3)
rep(v1[2:4], times = c(3, 5, 3))
v1[2:11]
rep(v1[6:7], times = 3)
rep(v1, times = 2)
