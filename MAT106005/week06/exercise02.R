# Exercise 02

dat <- read.csv("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week06\\Product.csv",
                header = TRUE)

# a)
dat1 <- subset(dat, dat$City == "Boston")

# b)
dat2 <- subset(dat, dat$Product == 'Carrot')
sum(dat2$TotalPrice)

# c)
dat3 <- subset(dat1, dat1$Product == 'Carrot')
mean(dat3$Quantity)
