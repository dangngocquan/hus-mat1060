# Exercise 13

library(Stat2Data)
data("Diamonds")
dat <- Diamonds

# 1)
mean(dat$TotalPrice)

# 2)
mean(dat$PricePerCt)

# 3)
hist(
  dat$Carat,
  main = "Biểu đồ thể hiện trọng lượng của các viên kiêm cương",
  xlab = "Trọng lượng (carats)",
  ylab = "Số viên kim cương"
)

# 4)
colors <- unique(dat$Color)
total_carat_by_color <- sapply(
  colors,
  FUN = function (color) {
    tempDat <- subset(dat, dat$Color == color)
    return (sum(tempDat$Carat))
  }
)

barplot(
  total_carat_by_color,
  main = "Biểu đồ thể hiện tổng khối lượng kim cương theo từng màu",
  xlab = "Màu",
  ylab = "Tổng khối lượng (carat)",
  names.arg = colors
)

# 5)
plot(
  x = dat$Depth,
  y = dat$PricePerCt,
  main = "Biểu đồ tán xạ giữa Depth và PricePerCt",
  xlab = "Depth",
  ylab = "PricePerCt"
)

plot(
  x = dat$Depth,
  y = dat$TotalPrice,
  main = "Biểu đồ tán xạ giữa Depth và TotalPrice",
  xlab = "Depth",
  ylab = "TotalPrice"
)
