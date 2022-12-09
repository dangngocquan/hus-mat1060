# Exercise 11

library(Stat2Data)
data("Clothing")
dat <- Clothing

# 1)
table(rep(
  c(0, 1),
  times = c(sum(dat$Card == 0),
            sum(dat$Card == 1))
  )
)

# 2)
mean(dat$Amount)

# 3)
mean_dollar_purchase_12 <- sapply(
  1:length(dat$ID),
  FUN = function (index) {
    if (dat$Freq12[index] > 0) {
      return (dat$Dollar12[index] / dat$Freq12[index])
    }else {
      return (0)
    }
  }
)
mean_dollar_purchase_12

mean_dollar_purchase_24 <- sapply(
  1:length(dat$ID),
  FUN = function (index) {
    if (dat$Freq24[index] > 0) {
      return (dat$Dollar24[index] / dat$Freq24[index])
    }else {
      return (0)
    }
  }
)
mean_dollar_purchase_24

# 4)
mean0_12 <- mean(mean_dollar_purchase_12[dat$Card == 0])
mean1_12 <- mean(mean_dollar_purchase_12[dat$Card == 1])
mean0_24 <- mean(mean_dollar_purchase_24[dat$Card == 0])
mean1_24 <- mean(mean_dollar_purchase_24[dat$Card == 1])

barplot(
  height = c(mean0_12, mean1_12),
  main = "Biểu đồ cột thể hiện số tiền trung bình trong 1 lần thanh toán giữa 
      các hành khách có thể thành viên và không có thẻ thành viên 
      (12 tháng gần đây)",
  ylab = "Số tiền trung bình ($)",
  names.arg = c("Không có thẻ thành viên", "Có thẻ thành viên"),
  ylim = c(0, 200)
)

barplot(
  height = c(mean0_24, mean1_24),
  main = "Biểu đồ cột thể hiện số tiền trung bình trong 1 lần thanh toán giữa 
      các hành khách có thể thành viên và không có thẻ thành viên 
      (24 tháng gần đây)",
  ylab = "Số tiền trung bình ($)",
  names.arg = c("Không có thẻ thành viên", "Có thẻ thành viên"),
  ylim = c(0, 200)
)
