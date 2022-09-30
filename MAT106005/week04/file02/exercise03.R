# Exercise 03

# a)
minutes = c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
minutes
min(minutes)
mean(minutes)
max(minutes)

# b)
minutes[which(minutes == 24)] <- 18
minutes

# c)
length(which(minutes > 20))
length(which(minutes <= 17)) / length(minutes)
