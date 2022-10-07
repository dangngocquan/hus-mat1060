# Exercise 01

# a)
studentID <- sample(x = 1000:2345, size = 234, replace = FALSE)
regularScore <- sample(x = seq(0,10,0.01), size = 234, replace = TRUE)
midTermScore <- sample(x = seq(0,10,0.01), size = 234, replace = TRUE)
lastTermScore <- sample(x = seq(0,10,0.01), size = 234, replace = TRUE)
grades <- data.frame(studentID, regularScore, midTermScore, lastTermScore)
grades

# b)
grades$averageScore <- (0.2*grades$regularScore + 0.2*grades$midTermScore
                            + 0.6*grades$lastTermScore)
grades

# c)
grades$alphaScore <- cut(grades$averageScore, 
                         breaks = c(-Inf, 4, 5, 5.5, 6.6, 7, 8, 8.5, 9, Inf), 
                         labels = c("F", "D", "D+", "C", "C+",
                                    "B", "B+", "A", "A+"),
                         right = FALSE)
grades
