age <- c(1, 2, 3, 4, 5)
insulin <- c(1.2, 2.3, 3.4, 4.5, 5.6)
data <- data.frame(age, insulin)
data

data2 <- read.csv("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week05\\testFile.csv", 
                  header = TRUE)
data2

cars
data3 <- mtcars
data3
data3$trans <- factor(data3$am, levels = c(0, 1),
                      labels = c("Automatic", "Manual"))
data3

c1 <- c(1, 2, 3, 4, 5) 
df <- data.frame(c1)
df
df$c2 <- cut(df$c1, breaks = c(-Inf, 2, 4, Inf), labels = c("[,2)", "[2,4)", "[4,0)"),right = FALSE)
df
