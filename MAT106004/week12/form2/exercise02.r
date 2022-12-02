# Exercise 02

frequency <- c(5, 13, 16, 9, 4, 2, 2)
class_interval_start <- c(2.0, 5.0, 8.0, 11.0, 14.0, 17.0, 20.0)
class_interval_end <- c(4.9, 7.9, 10.9, 13.9, 16.9, 19.9, 22.9)

#mean
class_interval <- (class_interval_start + class_interval_end) / 2
mean1 <- sum(class_interval * frequency) / sum(frequency)

# median
median(rep(class_interval, times = frequency))


# mode
index1 <- which.max(frequency)
print(paste0(class_interval_start[index1],
             " - ",
             class_interval_end[index1]))
