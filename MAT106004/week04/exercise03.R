# Exercise 3 (exercise 01 at slide 47)
setwd("D:\\Study\\R\\HUSMAT1060\\MAT106004\\week04")

# a)
library(data.table)
WHO1 <- fread("WHO1.csv")
WHO1

for (column in 3:10) {
  print(column)
  indexMissing = which(is.na(WHO1[[column]]) | WHO1[[column]] == "")
  tempVector <- as.character(WHO1[[column]][-indexMissing])
  tempVector <- as.numeric(tempVector)
  medianValue <- median(tempVector)
  WHO1[[column]][indexMissing] <- medianValue
}
WHO1


# b)
dataBahrainCountry <- WHO1[WHO1$Country == "Bahrain"]
dataMexicoCountry <- WHO1[WHO1$Country == "Mexico"]

if (dataBahrainCountry$`LifeExpectancy (Tuoitho)` 
    == dataMexicoCountry$`FertilityRate (Tylesinhsan)`) {
  print("The life expectancy of Bahrain country is equal to the life expectancy of Mexico country")
}else {
  if (dataBahrainCountry$`LifeExpectancy (Tuoitho)` 
      > dataMexicoCountry$`FertilityRate (Tylesinhsan)`) {
    print("The life expectancy of Bahrain country is greater than the life expectancy of Mexico country")
  }else {
    print("The life expectancy of Bahrain country is less than the life expectancy of Mexico country")
  }
}

# c)
dataCanadaCountry <- WHO1[WHO1$Country == "Canada"]
print(paste("The fertility rate of Canada is", 
            as.numeric(dataCanadaCountry$`FertilityRate (Tylesinhsan)`)))

# d)
group <- WHO1$`GNI (Thunhapquocdan)`
group <- as.character(group)
group <- as.numeric(group)
group <- cut(group, breaks = c(-Inf, 9999.9999, 19999.9999, Inf),
                labels = c("Undeveloped country", "Developing country",
                           "Developed country"))
WHO1$Group <- group

print(paste("China is", WHO1[WHO1$Country == "China"]$Group))

# e)
findMaxPopulation <- function() {
  tempVector <- WHO1$`Population (Danso)`
  tempVector <- as.character(tempVector)
  tempVector <- as.numeric(tempVector)
  return (max(tempVector))
}
print(paste("The maxium population is", findMaxPopulation()))

# f)
findGroupOfCountry <- function(countryName) {
  return (WHO1[WHO1$Country == countryName]$Group)
}
nameOfCountry = "China"
print(paste(nameOfCountry, "is", findGroupOfCountry(nameOfCountry)))
