# Tạo vector
v1 <- c(2, 4, 6, 8, 10)
v1
v1[1, 2]
v1[1 2]
v1[c(1, 3, 4)]
v1[1:3]
v1[c(-1, -3)]
v1[TRUE]
v1[FALSE]
v1[c(TRUE, FALSE)]

v2 <- c(2, 4, 6, "8", 10)
v2

v3 <- c(2, 4, TRUE, 8, FALSE)
v3

v4 <- c(2, "4", TRUE, 8, 10)
v4

v5 <- v1 + v3
v5

v5^2
v5*2

v6 <- c(1, 2, 3)
v6

v6 + v5
3 / 0
-3/0
1/10000

v7 <- c(0, v6, 0)
v7
v2[0]

list1 <- list(
  a = FALSE,
  b = 1,
  c = "Hai",
  d = c(3, 4, "Năm"),
  e = c(6*TRUE, 7),
  f <- c(TRUE, FALSE, FALSE)
)
list1

list1$f
list1[[6]]

matrix3 <- matrix(
  data =1:12,
  ncol = 3,
  byrow = TRUE,
  dimnames = list(
    c("Row 1", "Row 2", "Row 3", "Row 4"),
    c("Column 1", "Column 2", "Column 3")
  )
)
matrix3

matrix2 <- matrix(
  data = 1:12,
  ncol = 3,
  byrow = TRUE
)
matrix2

matrix3[c(2, 3), 1]
matrix2[c(2, 3), 1]
matrix2[c(2, 3), c(1, 2)]
matrix3[2,]
matrix2[2,]
matrix3[,2]
matrix2[,2]
matrix3[c(-1, -2, -4), -1]

factor1 <- factor(
  c("B", "A", "B", "B", "C", "A", "C")
)
factor1

factor2 <- factor(
  c("Năm",3, 3, "3", "4", 4, "Năm", "Năm")
)
factor2

factor3 <- factor(
  c(0, TRUE, 1, 1, FALSE)
)
factor3

factor4 <- factor(
  c(0, TRUE, 1, 1, FALSE, "0")
)
factor4

factor1[0]
factor1[1]
factor1[c(-1, -2)]
factor2[1]
factor3[2]
factor4[2]
factor4[2] == TRUE
factor2[1] == "Năm"
factor3[2] == "0"
factor4[2] == "TRUE"


function1 <- function(number) {
  return (number * 2)
}
function1
function1(5)
function1(10.04)

x <- c(-1, 2, -3, 4, 5)
abs(x)

x <- c(1, 4, 9, 16, 25)
sqrt(x)

x <- c(0, pi/6, pi/4, pi/3, pi/2)
sin(x)

x <- c(0, pi/6, pi/4, pi/3, pi/2)
cos(x)

x <- c(0, pi/6, pi/4, pi/3, pi/2)
tan(x)

x <- c(0, 1, 2, 3, 4)
exp(x)

x <- c(1, exp(1), exp(2), exp(3), exp(4))
log(x)

x <- c(0.01, 0.1, 1, 10, 100)
log10(x)

x <- c(-3.7, -3.2, -2.7, -2.2, -0.7, -0.2, 0.2, 0.7, 2.2, 2.7, 3.2, 3.7)
round(x)

x <- c(-4.5, -3.5, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.5, 4.5)
round(x)


A <- matrix(
  data = 1:2,
  ncol = 2,
  byrow = TRUE
)
A

t(A)

B <- matrix(
  data = 1:6,
  nrow = 2,
  byrow = TRUE
)
B

C <- matrix(
  data = 1:4,
  ncol = 2,
  byrow = TRUE
)
C

A %*% B

det(C)

solve(C)

x <- c(1, 2, 3, 5, 8, 10)
x

mean(x)

median(x)

var(x)

sd(x)

max(x)

min(x)

x <- c(1, 2, 3, 4, 5)
sum(x)

x <- c(2, 3, 4)
prod(x)

x <- c(1, 2, 3, 4, 5)
length(x)

matrix1 <- matrix(
  data = 1: 6,
  ncol = 3
)
length(matrix1)
length(matrix1[1,])
length(matrix1[,1])

x <- c(1, 3, 2, 2, 1)
sort(x)
sort(x, decreasing = TRUE)

matrix1 <- matrix(
  data = c(1, 5, 3, 2, 6, 4),
  ncol = 3
)
sort(matrix1)

seq(
  from = 5,
  to = 1,
  by = -0.9
)

rep(
  x = c(1, 2, 3),
  length.out = 5
)

data1 <- data.frame(
  column1 = c(1, 2, 3, 4),
  column2 = c(5, 6, 7, 8)
)
data1

data2 <- data.frame(
  column1 = c(1, 2, 3, 4),
  column2 <- c(5, 6, 7, 8)
)
data2

data1$column1

data1 <- read.csv(
  file = "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17\\scoreData.csv",
  header = TRUE
)
data1

data1 <- read.csv(
  file = "scoreData.csv",
  header = TRUE
)
data1

setwd("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17")
install.packages("readxl")
library(readxl)
data1 <- read_excel(
  "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17\\scoreData.xlsx"
)
data1

library(MASS)
data("Boston")
Boston

data1 <- data.frame(
  column1 = c(1, 2, 3, 4),
  column2 = c(5, 6, 7, 8)
)
data1

write.csv(
  x = data1,
  file = "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17\\data11.csv",
  row.names = FALSE
)

install.packages("writexl")
library(writexl)
write_xlsx(
  x = data1,
  path = "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17\\data11.xlsx",
)


data1 <- data.frame(
  Name = c("AA", "BB", "CC", "DD", "EE"),
  Gender = c(1, 0, 0, 1, 0)
)
data1

data1$Gender2 <- factor(
  x = data1$Gender,
  levels = c(0),
  labels = c("Female")
)
data1
is.na(data1$Gender2[1])

data2 <- read.csv(
  file = "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week17\\data1.csv",
  header = TRUE
)
data2

data1 <- data.frame(
  Score = c(10, 8, 6, 7.5, 3)
)
data1

data1$Group <- cut(
  x = data1$Score,
  breaks = c(0, 4, 8, Inf),
  labels = c("L", "M", "H")
)
data1


v <- c(1, 2, 3, 4, 5)
v
as.numeric(v)

as.character(v)

as.factor(v)

data1 <- data.frame(
  column1 = c("r1c1", "r2c1", "r3c1", "r4c1", "r5c1"),
  column2 = c("r1c2", "r2c2", "r3c2", "r4c2", "r5c2"),
  column3 = c("r1c3", "r2c3", "r3c3", "r4c3", "r5c3"),
  column4 = c("r1c4", "r2c4", "r3c4", "r4c4", "r5c4")
)
data1

data1[1]
data1[[1]]
data1[,1]
data1[1,]
data1[1,1]
data1[c(1, 2)][1,]
data1[c(2, 3), c(1,2)]
data1[0, 0]
data1$column2
data1[data1$column2 == "r3c2", ]

data1 <- data.frame(
  c1 = c(1, 2, 3, 4, 5, 6),
  c2 = c(7, 8, 9, 10, 11, 12),
  c3 = c(13, 14, 15, 16, 17, 18),
  c4 = c(19, 20, 21, 22, 23, 24),
  row.names = c("r1", "r2", "r3", "r4", "r5", "r6")
)
data1
data1[c(TRUE, FALSE)]
data1[data1$c2 < 12 & data1$c3 > 13]
data1[2:3,]

data1 == data1$c2

data1 == data1$c2[1:2]
data1 == data1$c2[1:3]

data2 <- data.frame(
  c1 = c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE),
  c2 = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE),
  c3 = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE),
  c4 = c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE),
  row.names = c("r1", "r2", "r3", "r4", "r5", "r6")
)
data2

dataX <- data.frame(
  col1X = c(1, 2, 3, 4),
  col2X = c(5, 6, 7, 8)
)
dataX

dataY <- data.frame(
  col1Y = c(1, 2, 3, 4),
  col2Y = c(9, 10, 11, 12)
)
dataY

dataZ <- data.frame(
  col1Z = c(1, 2, 4, 1),
  col2Z = c(13, 14, 15, 16)
)
dataZ

dataT <- data.frame(
  col1T = c(2, 4, 6, 8),
  col2T = c(13, 14, 15, 16)
)
dataT

merge(x = dataX, 
      y = dataT,
      by.x = "col1X",
      by.y = "col1T"
)

merge(
  x = dataX,
  y = dataZ,
  by.x = "col1X",
  by.y = "col1Z"
)


  data1 <- data.frame(
    col1 = c(NA, 2, 3, NA, 5, 6, 7),
    col2 = c(1, 2, NA, 4, NA, 6, 7)
  )
data1

dim(data1)

data2 <- na.omit(data1)
data2
is.na(data1)
colSums(is.na(data1))

mean(data1$col1, na.rm = TRUE)

which.min(data1$col1)
which.max(data1$col2)

v1 <- sample(
  x = 2:7,
  size = 6,
  replace = TRUE
)
v1

matrix2 <- matrix(
  data = 1:8,
  ncol = 4,
  dimnames = list(
    c("r1", "r2"),
    c("c1", "c2", "c3", "c4")
  )
)
matrix2
apply(
  X = matrix2,
  MARGIN = 2,
  FUN = function(vector1) {
    return (sum(vector1))
  }
)

lapply(
  X = matrix2[,1],
  FUN = function(element) {
    return (element^2)
  }
)

sapply()

sapply(
  X = matrix2[1,],
  FUN = function(element) {
    return (element^2)
  }
)


v1 <- c(5, 7, 9, 12, 15, 20)
barplot(
  height = v1,
  main = "Biểu đồ cột",
  xlab = "X",
  ylab = "Y",
  xlim = c(-9,10)
)

matrix1 <- matrix(
  data = 1:6,
  ncol = 3
)
barplot(
  height = matrix1,
  main = "Biểu đồ cột",
  xlab = "X",
  ylab = "Y",
  beside= TRUE,
  ylim = c(0, 10)
)

v1 <- c("A", "A", "B", "C", "C", "C", "D", "D", "A", "E", "F")
table(v1)

barplot(
  height = table(v1)
)

area <- c(1, 2, 2, 3, 4)
pie(
  x = area,
  labels = c("A", "B","C", "D", "E"),
  main = "Biểu đồ tròn"
)

values <- c(1, 1, 1, 2, 2, 3 ,3 ,1, 4, 4, 4)
hist(
  x = values,
  main = "Name of histogram",
  xlab = "Value",
  ylab = "Frequency"
)

data1 <- data.frame(
  col1 = c(1, 2, 3, 4, 5),
  col2 = c(1, 1, 2, 2, 3)
)

plot(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 1, 4, 2, 7),
  type = "l",
  main = "Biểu đồ đường",
  xlab = "X",
  ylab = "Y"
)
jpeg("name.jpg", width = 1000, height = 500)

v1 <- c(5, 7, 9, 12, 15, 20)
barplot(
  height = v1
)

dev.off()

data1 <- data.frame(
  col1 = c(1, 2, 3, 4, 5),
  col2 = c(5, 6, 7, 8, 9),
  row.names = c("r1", "r2", "r3", "r4", "r5")
)
data1

data2 <- subset(
  x = data1,
  (data1$col1 < 5 & data1$col2 > 5)
)
data2

summary(data1)
