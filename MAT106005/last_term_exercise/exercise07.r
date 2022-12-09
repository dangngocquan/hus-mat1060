# Exercise 07

library(Stat2Data)
data("BirdNest")
dat <- BirdNest

# 1)
table(dat$Nesttype)

# 2)
dat$Common[which.max(dat$Length)]
dat$Common[which.min(dat$Length)]

# 3)
barplot(
  table(dat$Location),
  main = "Biểu đồ cột thể hiện vị trí làm tổ của các loài chim",
  xlab = "Vị trí",
  ylab = "Số loài chim"
)

# 4)
mean(dat$Nestling)
