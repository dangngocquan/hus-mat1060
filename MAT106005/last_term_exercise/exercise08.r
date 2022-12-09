# Exercise 08

library(Stat2Data)
data("BlueJays")
dat <- BlueJays

# 1)
table(dat$KnownSex)

# 2)
mean(dat$BillDepth)
mean(dat$BillWidth)
mean(dat$BillLength)
mean(dat$Head)
mean(dat$Mass)
mean(dat$Skull)
sd(dat$BillDepth)
sd(dat$BillWidth)
sd(dat$BillLength)
sd(dat$Head)
sd(dat$Mass)
sd(dat$Skull)

# 3)
hist(
  x = dat$Mass,
  main = "Biểu đồ về trọng lượng của loài chim",
  xlab = "Trọng lượng (g)",
  ylab = "Số lượng (con)"
)

# 4)
plot(
  x = dat$BillWidth,
  y = dat$BillLength,
  main = "Biều đồ tán xạ thể hiện mối tương quan giữa BillWidth và BillLength",
  xlab = "BillWidth (mm)",
  ylab = "BillLengh (mm)"
)
