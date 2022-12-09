# Exercise 06

install.packages("Stat2Data")
library(Stat2Data)
data(AHCAvote2017)
dat <- AHCAvote2017

# 1)
states_frequency <- table(dat$STATE)
states_frequency

# 2)
votes <- rep(
  c("AHCAvote", "Trump"),
  times = c(sum(dat$AHCAvote), sum(dat$Trump))
)
votes_frequency <- table(votes)
votes_frequency

# 3)
barplot(
  c(sum(dat$Dem), sum(dat$Rep)),
  main = "Số thành viên theo các Đảng",
  xlab = "Tên Đảng",
  ylab = "Số thành viên",
  names.arg = c("Democrat", "Republican")
)

# 4)
plot(
  y = dat$uniChange,
  x = dat$AHCAvote,
  main = "Biểu đồ tán xạ giữa uniChange và AHCAvote",
  xlab = "AHCAvote",
  ylab = "uniChange"
)
