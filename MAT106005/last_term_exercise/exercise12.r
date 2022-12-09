# Exercise 12

library(Stat2Data)
data("CloudSeeding2")
dat <- CloudSeeding2

# 1)
dat1 <- subset(dat, dat$Seeded == "U")
mean_rainfall_TE <- mean(dat1$TE)
mean_rainfall_TW <- mean(dat1$TW)
mean_rainfall_NC <- mean(dat1$NC)
mean_rainfall_SC <- mean(dat1$SC)
mean_rainfall_NWC <- mean(dat1$NWC)

# 2)
seasons <- unique(dat1$Season)

mean_rainfall_TE_by_seasons <- sapply(
  seasons,
  FUN = function (season) {
    tempDat <- subset(dat1, dat1$Season == season)
    return (mean(tempDat$TE))
  }
)

mean_rainfall_TW_by_seasons <- sapply(
  seasons,
  FUN = function (season) {
    tempDat <- subset(dat1, dat1$Season == season)
    return (mean(tempDat$TW))
  }
)

mean_rainfall_NC_by_seasons <- sapply(
  seasons,
  FUN = function (season) {
    tempDat <- subset(dat1, dat1$Season == season)
    return (mean(tempDat$NC))
  }
)

mean_rainfall_SC_by_seasons <- sapply(
  seasons,
  FUN = function (season) {
    tempDat <- subset(dat1, dat1$Season == season)
    return (mean(tempDat$SC))
  }
)

mean_rainfall_NWC_by_seasons <- sapply(
  seasons,
  FUN = function (season) {
    tempDat <- subset(dat1, dat1$Season == season)
    return (mean(tempDat$NWC))
  }
)

# 3)
dat3 <- subset(dat, dat$Seeded == "S")
rainfall_TE_seed_S <- sum(dat3$TE)
rainfall_TW_seed_S <- sum(dat3$TW)

# 4)
seasons_seed_S <- unique(dat3$Season)

rainfall_TE_seed_S_by_season <- sapply(
  seasons_seed_S,
  FUN = function (season) {
    tempDat <- subset(dat3, dat3$Season == season)
    return (sum(tempDat$TE))
  }
)

rainfall_TW_seed_S_by_season <- sapply(
  seasons_seed_S,
  FUN = function (season) {
    tempDat <- subset(dat3, dat3$Season == season)
    return (sum(tempDat$TW))
  }
)

# 5)
