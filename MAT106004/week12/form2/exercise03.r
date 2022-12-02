# Exercise 03

data1 <- data.frame(
  City = c("Detroit, MI", "Milwaukee, WI", "Newark, NJ","Portland, OR",
            "Des Moines, IA", "Baltimore, MD", "Sioux Falls, IA",
            "Providence, RI","Philadelphia, PA", "Omaha, NE",
            "Burlington, VT", "Manchester, NH", "Fargo, ND", "Portland, ME",
            "Indianapolis, IN", "Wilmington, DE", "Bridgeport, CT",
            "Chicago, IL", "Houston, TX", "Atlanta, GA",
            "Little Rock, AR", "Albuquerque, NM", "Denver, CO", "Las Vagas, NV",
            "Oklahoma City, OK", "Casper, WY", "Birmingham, AI",
            "Phoenix, AZ", "Los Angeles, CA", "Homolulu, HI"),
  Rate = c(4.10, 3.69, 3.20, 3.10, 2.97, 2.64, 2.47, 2.39, 2.38, 2.29,
           1.76, 1.71, 1.62, 1.57, 1.57, 1.56, 1.55, 1.55, 1.53, 1.50,
           1.02, 1.01, 0.94, 0.88, 0.81, 0.70, 0.70, 0.68, 0.64, 0.59),
  Group = rep(c(1, 2, 3), each = 10)
  
)

# Mean
mean(data1$Rate[data1$Group == 1])
mean(data1$Rate[data1$Group == 2])
mean(data1$Rate[data1$Group == 3])
mean(data1$Rate)

# Median
median(data1$Rate[data1$Group == 1])
median(data1$Rate[data1$Group == 2])
median(data1$Rate[data1$Group == 3])
median(data1$Rate)

# Mode
data1$City[which.max(data1$Rate[data1$Group == 1])]
data1$City[10 + which.max(data1$Rate[data1$Group == 2])]
data1$City[20 + which.max(data1$Rate[data1$Group == 3])]
data1$City[which.max(data1$Rate)]

