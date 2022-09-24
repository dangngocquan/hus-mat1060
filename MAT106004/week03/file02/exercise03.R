# Exercise 03

# a)
minuteOfDay = c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
min(minuteOfDay)
mean(minuteOfDay)
max(minuteOfDay)

# b)
replace(minuteOfDay, minuteOfDay == 24, 18)

# c)
greaterThan20 = length(which(minuteOfDay > 20))
greaterThan20

lessThanOrEqual17 = length(which(minuteOfDay <= 17))
percentLessThanOrEqual17 = lessThanOrEqual17 / length(minuteOfDay) * 100
percentLessThanOrEqual17

