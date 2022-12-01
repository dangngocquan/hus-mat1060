# Exercise 05

standard_therapy <- c(4, 15, 24, 10, 1, 27, 31,
           14, 2, 16, 32, 7, 13, 36,
           29, 6, 12, 18, 14, 15, 18,
           6, 13, 21, 20, 8, 3, 24)
new_therapy <- c(5, 20, 29, 15, 7, 32, 36,
           17, 15, 19, 35, 10, 16, 39,
           27, 14, 10, 16, 12, 13, 16,
           9, 18, 33, 30, 29, 31, 27)
p1 <- hist(standard_therapy)
p2 <- hist(new_therapy)

plot(p1, col = rgb(0, 0, 1, 0.25))
plot(p2, col = rgb(1, 0, 0, 0.25), add = TRUE)


# Phương pháp điều trị mới có thể kéo dài thời gian sống, cụ thể, thời gian sống
# trong các khoản 15-20 ngày, 25-40 ngày tăng , 0-5 ngày giảm so với phương pháp
# điều trị thông thường. Đây là một kết quả tích cực.