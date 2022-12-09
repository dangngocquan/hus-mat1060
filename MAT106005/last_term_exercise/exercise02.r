# Exercise 02

CW <- ChickWeight

# 1)
diets <- unique(CW$Diet)
numberChicks <- sapply(diets, FUN = function (x) {
  tempData <- subset(CW, CW$Diet == x)
  
  return (length(unique(tempData$Chick)))
})

barplot(numberChicks,
        main = "Số gà được thử nghiệm cho từng chế độ ăn",
        xlab = "Chế độ ăn",
        ylab = "Số gà",
        names.arg = diets)

# 2)
hist(x = subset(CW, CW$Time == 0)$weight,
     main = "Trọng lượng của các con gà khi mới sinh",
     xlab = "Trọng lượng (g)",
     ylab = "Sô gà")

# 3)
plot(x = subset(CW, CW$Chick == 42)$Time,
     y = subset(CW, CW$Chick == 42)$weight,
     type = "l",
     main = "Quá trình tăng trọng lượng của con gà thứ 42",
     xlab = "Ngày",
     ylab = "Trọng lượng (g)",
    )

# 4)
diets <- unique(CW$Diet)
chicks21 <- subset(CW, CW$Time == 21)
means <- sapply(diets, FUN = function (x) {
  tempChicks21 <- subset(chicks21, chicks21$Diet == x)
  return (mean(tempChicks21$weight))
})
means

sds <- sapply(diets, FUN = function (x) {
  tempChicks21 <- subset(chicks21, chicks21$Diet == x)
  return (sd(tempChicks21$weight))
})
sds
