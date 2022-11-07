5 / 2 
a <- 5
typeof(a)
b <- 5/2
typeof(b)
c <- 5L
typeof(c)
d <- c(1, 2)
typeof(d)
e <- "123"
typeof(e)
f <- TRUE
typeof(f)

g <- table(c("A", 2, 2, 1, 3))
g
typeof(g)
h <- rnorm(45, 50 ,6)
h
typeof(h)

i <- c(1, 1, 2, 2, 2, 3, 4)
barplot(i)

hist(i)

pie(i)

v1 <- c(1, 2, 3, 4)
v2 <- c(1, 4, 6, 8)
plot(v1, v2)

m <- matrix(1:9, nrow = 3, byrow = TRUE)
m
barplot(matrix(1:9, nrow = 3, byrow = TRUE), beside = TRUE)


v3 <- c(1,1, 2, 3, 4, 4, 4)
barplot(table(v3), main = "Main title",
        xlab = "X title",
        ylab = "Y title",
        sub = "Sub title",
        xlim = c(0, 10),
        col = c("red", 'blue', 'yellow', 'white', 'black'))
legend("topright", legend = c("C1", "C2", "C3", "C4"),
       fill = c("red", 'blue', 'yellow', 'white', 'black'))

# png("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week09\\test1.png", width = 1000, height = 400)
# pdf("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week09\\test1.pdf")
jpeg("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week09\\test1.jpeg", width = 1000, height = 400)
v3 <- c(1,1, 2, 3, 4, 4, 4)
barplot(table(v3), main = "Main title",
        xlab = "X title",
        ylab = "Y title",
        sub = "Sub title",
        xlim = c(0, 10),
        col = c("red", 'blue', 'yellow', 'white', 'black'))
legend("topright", legend = c("C1", "C2", "C3", "C4"),
       fill = c("red", 'blue', 'yellow', 'white', 'black'))
dev.off()


v4 <- c(1, 2, 2, 2, 4, 5, 7, 7, 7, 9, 9, 18)
boxplot(v4)
q1 <- quantile(v4, 0.25)
q3 <- quantile(v4, 0.75)
iqr <- q3 - q1
v4_no_out <- v4[v4 >= q1 - 1.5*iqr & v4 <= q3 + 1.5*iqr]
boxplot(v4_no_out)

