# Exercise 03

chickWts <- chickwts

# 1)
mean(chickWts$weight)
var(chickWts$weight)

# 2)
feedSet <- unique(chickWts$feed)
feedSet
for (feed in feedSet) {
  print(paste0(
    "Feed: ", feed,
    " ;Mean: ", mean(chickWts$weight[chickWts$feed == feed]),
    " ;Variance: ", var(chickWts$weight[chickWts$feed == feed])
  ))
}
