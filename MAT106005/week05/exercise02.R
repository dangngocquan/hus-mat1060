# Exerise 02

dat <- read.csv(file = "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week05\\Product.csv",
                header = TRUE)
dat

# a)
dat1 <- subset(dat, dat$City == "Boston")
dat1

# b)
dat2 <- subset(dat, dat$Product == 'Carrot')
dat2
totalCarrotPrices <- sum(dat2$TotalPrice)
totalCarrotPrices

# c)
dat3 <- subset(dat, dat$City == 'Boston' & dat$Product == 'Carrot')
dat3
averageCarrotInBoston <- mean(dat3$Quantity)
averageCarrotInBoston
