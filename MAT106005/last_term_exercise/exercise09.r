# Exercise 09

library(Stat2Data)
data("BritishUnions")
dat <- BritishUnions

# 1)
barplot(
  dat$Unemployment,
  main = "Biểu đồ thể hiện tỷ lệ thất nghiệp theo thời gian",
  xlab = "Thời gian",
  ylab = "Tỷ lệ thất nghiệp (%)",
  names.arg = dat$Date
)

# 2)
plot(
  x = dat$AgreePct,
  y = dat$Unemployment,
  main = "Biểu đồ tán xạ giữa AgreePct và Unemployment",
  xlab = "AgreePct (%)",
  ylab = "Unemployment (%)"
)

plot(
  x = dat$DisagreePct,
  y = dat$Unemployment,
  main = "Biểu đồ tán xạ giữa DisagreePct và Unemployment",
  xlab = "DisagreePct (%)",
  ylab = "Unemployment (%)"
)


plot(
  x = dat$NetSupport,
  y = dat$Unemployment,
  main = "Biểu đồ tán xạ giữa NetSupport và Unemployment",
  xlab = "NetSupport (%)",
  ylab = "Unemployment (%)"
)
