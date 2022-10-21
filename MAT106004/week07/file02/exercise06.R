# Exercise 06

install.packages("Stat2Data")
library(Stat2Data)
data("AHCAvote2017")
AHCAvote2017

# 1)
stateSet <- unique(AHCAvote2017$STATE)
for (state in stateSet) {
  print(paste0(
    "State: ", state,
    "; Number member: ", sum(AHCAvote2017$STATE == state)
  ))
}

# 2)

# 3)
democratNumber <- sum(AHCAvote2017$Dem == 1)
democratNumber
republicanNumber <- sum(AHCAvote2017$Rep == 1)
republicanNumber

# 4)
distMinUni2013 <- AHCAvote2017$Dist[which(AHCAvote2017$uni2013 == min(AHCAvote2017$uni2013))]
distMinUni2013
distMinUni2015 <- AHCAvote2017$Dist[which(AHCAvote2017$uni2015 == min(AHCAvote2017$uni2015))]
distMinUni2015
distMaxUni2013 <- AHCAvote2017$Dist[which(AHCAvote2017$uni2013 == max(AHCAvote2017$uni2013))]
distMaxUni2013
distMaxUni2015 <- AHCAvote2017$Dist[which(AHCAvote2017$uni2015 == max(AHCAvote2017$uni2015))]
distMaxUni2015
