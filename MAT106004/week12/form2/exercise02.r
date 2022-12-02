# Exercise 02

frequency <- c(5, 13, 16, 9, 4, 2, 2)
class_interval_start <- c(2.0, 5.0, 8.0, 11.0, 14.0, 17.0, 20.0)
class_interval_end <- c(4.9, 7.9, 10.9, 13.9, 16.9, 19.9, 22.9)

#mean
mean_start <- sum(frequency * class_interval_start) / sum(frequency)
mean_end <- sum(frequency * class_interval_end) / sum(frequency)
print(paste0(mean_start, " - ", mean_end))

# median


# mode
index1 <- which.max(frequency)
print(paste0(class_interval_start[index1],
             " - ",
             class_interval_end[index1]))
