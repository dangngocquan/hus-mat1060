data <- data.frame(c1 = c(1, 2, 3, 4, 5),
                   c2 = c(6, 7, 8, 9, 10))
data
data2 <- apply(data, 1, sum)
data2
data2 <- apply(data, 2, sum)
data2
data3 <- lapply(data, function(v) {
  return (v[1])
})
data3
data4 <- sapply(data, sum)
data4

vect1 <- c(1, 2, 3, 4, 5)
vect1
list1 <- lapply(vect1, function(v) {
  return (sum(v))
})
list1

vect4 <- 3:7
vect5 <- sapply(vect4, function(x) {
  range <- max(vect4) - min(vect4)
  return ((x - min(vect4)) / range)
})
print(vect5)

vect5 <- lapply(vect4, function(x) {
  range <- max(vect4) - min(vect4)
  return ((x - min(vect4)) / range)
})
print(vect5)

fact5 <- as.factor(vect5)
fact5

list1 <- list(
  a = c(1, 2, 3),
  c("A", "B")
)
list1
which.max(data$c2)

data5 <- data.frame(Id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                    Name = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
                    Gender = c("M", "M", "F", "F", "F", "M", "F", "M", "F", "M"),
                    Score = sample(seq(1, 10, 0.25), size = 10, replace = TRUE))
data5

genderSet <- unique(data5$Gender)
genderSet
IDOfMaxScore <- sapply(genderSet, function(gender) {
  tempData <- subset(data5, data5$Gender == gender)
  return (tempData$Name[which.max(tempData$Score)])
})
print(IDOfMaxScore)


1 & 1 & 1 & 0
1 && 1 && 1 && 0
1 || 1 || 1 || 0
0 || 0 || 0 
0 | 0 | 1

install.packages("Hmisc")
library("Hmisc")
y <- 1:30
cut2(x = y, 
     cuts = c(0, 10, 20, 30))


data <- data.frame(Rent = sample(seq(10, 100, 0.01), size = 67, replace = TRUE),
                   AllRent = sample(seq(10, 100, 0.01), size = 67, replace = TRUE),
                   Cows = sample(seq(10, 100, 0.01), size = 67, replace = TRUE),
                   Pasture = sample(seq(0, 1, 0.01), size = 67, replace = TRUE))
write.csv(data, "D:\\Study\\R\\HUSMAT1060\\MAT106005\\week10\\TrongCo.csv")




# a)
data <- read.csv("C:\\TrongCo.csv",
                 header = TRUE)
colSums(is.na(data))

# b)
mean(data$Cows, na.rm = TRUE)

# c)
minValue <- min(data$AllRent, na.rm = TRUE)
which(data$AllRent == minValue)

# d)
findAbsCows <- function(data) {
  result <- (max(data$Cows, na.rm = TRUE)
             - min(data$Cows, na.rm = TRUE))
  return (result)
}
findAbsCows(data)


