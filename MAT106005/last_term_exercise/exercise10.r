# Exercise 10

library(Stat2Data)
data("CAFE")
dat <- CAFE

# 1)
table(dat$State)

# 2)
vote0 <- length(subset(dat, dat$Vote == 0)$Vote)
vote1 <- length(subset(dat, dat$Vote == 1)$Vote)
vote1 > vote0

# 3)
dem0 <- length(subset(dat,dat$Dem == 0)$Dem)
dem1 <- length(subset(dat,dat$Dem == 1)$Dem)
barplot(
  c(dem0, dem1),
  main = "Kết quả bỏ phiếu theo từng đảng",
  xlab = "Đảng",
  ylab = "Số phiếu",
  names.arg = c("Đảng cộng hòa", "Đảng dân chủ")
)

# 4)
senator_vote0 <- subset(dat, dat$Vote == 0)
boxplot(
  x =senator_vote0$Contribution,
  main = "Biểu đồ hộp thể hiện mức đóng góp cho ngành công nghiệp ô tô của những thành viên không thông qua dự luận",
  ylab = "Dollars"
  )
