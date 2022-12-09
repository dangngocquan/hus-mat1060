# Exercise 03

dat <- chickwts

# 1)
mean_weight <- mean(dat$weight)
var_weight <- var(dat$weight)

# 2)
feed_group <- unique(dat$feed)
mean_weight_by_feeds <- sapply(
  feed_group, FUN = function (x) {
    tempDat <- subset(dat, dat$feed == x)
    return (mean(tempDat$weight))
  }
)

var_weight_by_feeds <- sapply(
  feed_group, FUN = function (x) {
    tempDat <- subset(dat, dat$feed == x)
    return (var(tempDat$weight))
  }
)

# 3)
barplot(mean_weight_by_feeds,
        main = "Trọng lượng trung bình của các con gà theo từng nhóm thức ăn",
        xlab = "Nhóm thức ăn",
        ylab = "Trọng lượng trung bình (g)",
        names.arg = feed_group)
