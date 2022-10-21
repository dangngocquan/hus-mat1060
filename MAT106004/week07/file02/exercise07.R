# Exercise 07
options(max.print = .Machine$integer.max)

library(Stat2Data)
data("BirdNest")
BirdNest

# 1)

# 2)
nestTypeSet <- unique(BirdNest$Nesttype)
meanLength <- c()
for (nestType in nestTypeSet) {
  meanLength <- append(meanLength, mean(BirdNest$Length[BirdNest$Nesttype == nestType]))
}
meanLength
print(paste0("Max mean length: ", nestTypeSet[meanLength == max(meanLength)]))
print(paste0("Min mean length: ", nestTypeSet[meanLength == min(meanLength)]))

# 3)
meanTimeNestling <- c()
for (nestType in nestTypeSet) {
  meanTimeNestling <- append(meanTimeNestling, mean(BirdNest$Nestling[BirdNest$Nesttype==nestType]))
}
meanTimeNestling

for (index in 1:length(nestTypeSet)) {
  print(paste0(
    "Nest Type: ", nestTypeSet[index],
    "; Mean time nestling: ", meanTimeNestling[index]
  ))
}
