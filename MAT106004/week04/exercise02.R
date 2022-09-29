# Exercise 02

setwd("D:\\Study\\R\\HUSMAT1060\\MAT106004\\week04")
dat <- read.csv("Product.csv", header = TRUE)
dat

# a)
dat1 <- subset(dat, dat$City == "Boston")
dat1

# b)
dat2 <- subset(dat, dat$Product == "Carrot")
dat2
totalPriceOfCarrot = sum(dat2$TotalPrice)
totalPriceOfCarrot

# c)
dat3 <- subset(dat, dat$City == "Boston" & dat$Product == "Carrot")
dat3
averageNumbersOfCarrot = mean(dat3$Quantity)
averageNumbersOfCarrot
