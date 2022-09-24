# Exercise 01

# a)
pr = c(9000, 9500, 9400, 10000, 9500, 10300, 10200)

# b)
meanPr = mean(pr)
estimateEdmund = 9500
compare <- ""
ifelse(meanPr == estimateEdmund,
       compare <- "The mean price of the car is equal to Edmund's estimate.",
       ifelse(meanPr > estimateEdmund,
              compare <- "The mean price of the car is greater than Edmund's estimate.",
              compare <- "The mean price of the car is less than Edmund's estimate."
              )
       )

# c)
length(which(pr > estimateEdmund))
