# Exercise 01

# a)
pie(x = c(525, 500, 500, 300, 200, 475),
    labels = c("Quốc phòng", "An ninh xã hội", "Y tế",
               "Trả lãi nợ quốc gia", "Các chương trình xã hội",
               "Các chi phí khác"))

# b)
barplot(height = c(525, 500, 500, 300, 200, 475),
        space = 16,
        names.arg = c("Quốc phòng", "An ninh xã hội", "Y tế",
               "Trả lãi nợ quốc gia", "Các chương trình xã hội",
               "Các chi phí khác"))

# c)
data <- c(525, 500, 500, 300, 200, 475)
pie(x = data / sum(data) * 100)

barplot(height = data / sum(data) * 100)


