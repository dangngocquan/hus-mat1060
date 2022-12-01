# Exercise 02

# a)
# Trong trường hợp này, chúng ta không nên dùng biểu đồ tròn vì nó
# không thể hiện được sự thay đổi cũng như chênh lệch giữa các số 
# liệu trong các năm

# b)
matrix <- matrix(c(9436, 8687, 8273, 8142, 8697, 8852, 8422, 8082,
                   4733, 6517, 7226, 7821, 8717, 8965, 9050, 9036),
                 nrow = 2, byrow = TRUE)
matrix
barplot(matrix, beside = TRUE,
        names.arg = c(1990, 1995, 1997, 1998, 1999, 2000, 2001, 2002),
        legend.text = c("Passenger Car", "SUV/Light Truck")
        )

