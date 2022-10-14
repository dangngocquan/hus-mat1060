# Exercise 01
options(max.print = 50000)

# a)
studentID <- sample(1:2345, size=2345, replace = FALSE)
regularGrade <- sample(seq(0, 10, 0.25), size=2345, replace = TRUE)
midTermGrade <- sample(seq(0, 10, 0.25), size=2345, replace = TRUE)
lastTermGrade <- sample(seq(0, 10, 0.25), size=2345, replace = TRUE)
grades <- data.frame(studentID = studentID, 
                     regularGrade = regularGrade, 
                     midTermGrade = midTermGrade, 
                     lastTermGrade = lastTermGrade)

# b)
grades$averageGrade <- (0.2*grades$regularGrade + 0.2*grades$midTermGrade
                        + 0.6*grades$lastTermGrade)

# c)
grades$alphaGrade <- cut(grades$averageGrade, 
                         breaks = c(-Inf, 4, 5, 5.5, 6.5, 7, 7.5, 8.5, 9, Inf),
                         labels = c('F', 'D', 'D+', 'C', 'C+', 'B', 'B+', 'A', 'A+'),
                         right = FALSE)

