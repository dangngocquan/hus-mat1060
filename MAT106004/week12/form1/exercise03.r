# Exercise 03


family_practice <- c(47.8, 57.6, 59.9, 64.6, 66.2, 67.5, 70.0)
total_office_based_physicians <- c(271.3, 359.9, 427.3, 468.8, 473.2, 
                                   490.4, 514.0)
# a)

barplot(height = family_practice,
        main = "Số bác sĩ gia đình từ năm 1990 đến 2002",
        names.arg = c(1980, 1990, 1995, 1998, 1999, 2000, 2001))

# b)
barplot(height = family_practice / total_office_based_physicians * 100,
        main = "Tỷ lệ số bác sĩ gia đình trên số bác sĩ văn phòng (%)",
        names.arg = c(1980, 1990, 1995, 1998, 1999, 2000, 2001))

# c)
# Có sự khác biệt giữa 2 biểu đồ trên:
# Số bác sĩ gia đình  tăng dần số lượng theo thời gian, còn phần trăm thì 
# giảm dần (biểu đồ 2)