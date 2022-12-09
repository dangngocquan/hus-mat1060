# Exercise 04

dat <- iris

# 1)
mean_pedal_length <- mean(dat$Petal.Length)

# 2)
species <- unique(dat$Species)
mean_pedal_length_by_species <- sapply(
  species,
  FUN = function (x) {
    tempDat <- subset(dat, dat$Species == x)
    return (mean(tempDat$`Petal.Length`))
  }
)
