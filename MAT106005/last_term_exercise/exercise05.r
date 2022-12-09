# Exercise 05

dat <- sleep

# 1)
groups <- unique(dat$group)
mean_extra_by_groups <- sapply(
  groups,
  FUN = function (x) {
    tempDat <- subset(dat, dat$group == x)
    return (mean(tempDat$extra))
  }
)
