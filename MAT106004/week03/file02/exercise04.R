# Exercise 04

# a)
bill = c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48)
sum(bill)

# b)
greaterThan40 = length(which(bill > 40))
greaterThan40

percentGreaterThan40 = greaterThan40 / length(bill) * 100
percentGreaterThan40
