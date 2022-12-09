# Exercise 01

AP <- AirPassengers
matrix1 <- matrix(AP, ncol = 12, byrow = TRUE)

# 1)
barplot(matrix1[,1],
        main = "Số hành khách đi máy bay trong tháng 1",
        names.arg = start(AP):end(AP),
        xlab = "Năm",
        ylab = "Số hành khách")

# 2)
barplot(apply(matrix1, MARGIN = 1, sum),
        main = "Số hành khách đi máy bay trong các năm",
        names.arg = start(AP):end(AP),
        xlab = "Năm",
        ylab = "Số hành khách")

# 3)
apply(matrix1, MARGIN = 1, FUN = mean)

# 4)
apply(matrix1, MARGIN = 2, FUN = mean)
