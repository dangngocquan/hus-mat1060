# Exercise 02
options(max.print = .Machine$integer.max)

chickWeight <- ChickWeight
chickWeight
chickWeight$Diet <- as.numeric(as.character(chickWeight$Diet))
chickWeight$Chick <- as.numeric(as.character(chickWeight$Chick))
chickWeight$Time <- as.numeric(as.character(chickWeight$Time))
chickWeight$weight <- as.numeric(as.character(chickWeight$weight))


# 1)
dietSet <- unique(chickWeight$Diet)
dietSet
for (diet in dietSet) {
  print(paste0("Diet = ", diet, ": ", 
               length(unique(chickWeight$Chick[chickWeight$Diet==diet]))))
}

# 2)
mean(chickWeight$weight[chickWeight$Time==0])
var(chickWeight$weight[chickWeight$Time==0])

# 3)
subset(chickWeight, chickWeight$Chick==42)

# 4)
for (diet in dietSet) {
  print(mean(
    chickWeight$weight[chickWeight$Time == 21 & chickWeight$Diet == diet]))
  print(sd(
    chickWeight$weight[chickWeight$Time == 21 &  chickWeight$Diet == diet]))
}
