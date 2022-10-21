# Exercise 06

install.packages("Stat2Data")
library(Stat2Data)
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
