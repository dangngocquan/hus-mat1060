# Exercise 01
data <- c(55, 85, 90, 50, 110, 115, 75, 85, 8, 23,
          70, 65, 50, 60, 90, 90, 55, 70, 5, 31)

mean(data)

median(data)

# mode
data1 <- unique(data)
data1 <- sort(data1)
data1[which.max(table(data))]
