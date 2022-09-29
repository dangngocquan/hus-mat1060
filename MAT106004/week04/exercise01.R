# Exercise 01
options(max.print = .Machine$integer.max)

# a)
studentID <- sample(x = 1000:2345, size = 234, replace = FALSE)
regularGrades <- sample(x = seq(0, 10, 0.1), size = 234, replace = TRUE)
midTermGrades <- sample(x = seq(0, 10, 0.1), size = 234, replace = TRUE)
lastTermGrades <- sample(x = seq(0, 10, 0.1), size = 234, replace = TRUE)
scores <- data.frame(studentID = studentID,
                  regularGrades = regularGrades,
                  midTermGrades = midTermGrades,
                  lastTermGrades = lastTermGrades)
scores

# b)
averageGrades <- 0.2*regularGrades + 0.2*midTermGrades + 0.6*lastTermGrades
scores$averageGrades <- averageGrades
scores

# c)
scores$letterGrades <- cut(scores$averageGrades,
                           breaks = c(0, 3.9999, 4.9999, 5.4999, 6.4999, 6.9999,
                                      7.9999, 8.4999, 8.9999, 10.0001),
                           labels = c("F", "D", "D+", "C", "C+", "B", "B+", "A",
                                      "A+"))