# Exercise 04

datIris <- iris

# 1)
mean(datIris$Petal.Length)

speciesSet <- unique(datIris$Species)
speciesSet
for (species in speciesSet) {
  print(paste0(
    "Species: ", species,
    " ;Mean petal length: ",mean(datIris$Petal.Length[datIris$Species == species]) 
  ))
}

