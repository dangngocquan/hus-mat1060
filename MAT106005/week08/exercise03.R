# Exercise 03

# 1)
WHO1 <- read.csv("D:\\Study\\R\\HUSMAT1060\\MAT106005\\week08\\WHO1.csv", header = TRUE)
numberOfFields = dim(WHO1)[2]
for (indexOfField in 1:numberOfFields) {
  if (colSums(is.na(WHO1))[indexOfField] > 0) {
    WHO1[[indexOfField]][is.na(WHO1[[indexOfField]])] <- median(WHO1[[indexOfField]], na.rm = TRUE)
  } 
}
colSums(is.na(WHO1))

# 2)
dataBahrain <- subset(WHO1, WHO1$Country == 'Bahrain')
dataMexico <- subset(WHO1, WHO1$Country == 'Mexico')
if (dataBahrain$LifeExpectancy..Tuoitho. == dataMexico$LifeExpectancy..Tuoitho.) {
  print("Life Expectancy of Bahrain is equal to life expectancy of Mexico.")
}else if (dataBahrain$LifeExpectancy..Tuoitho. > dataMexico$LifeExpectancy..Tuoitho.) {
  print("Life Expectancy of Bahrain is greater than life expectancy of Mexico.")
}else {
  print("Life Expectancy of Bahrain is less than life expectancy of Mexico.")
}

# 3)
dataCanada <- subset(WHO1, WHO1$Country == 'Canada')
print(paste0("Fertility rate of Canada is: ", dataCanada$FertilityRate..Tylesinhsan.))

# 4)
WHO1$Group <- cut(WHO1$GNI..Thunhapquocdan., breaks = c(-Inf, 10000, 20000, Inf), 
                  labels = c("Undeveloped", "Developing", "Developed"))
WHO1$Group[WHO1$Country == 'China']

# 5)
getCountryHighestPopulation <- function() {
  highestPopulation <- max(WHO1$Population..Danso.)
  return (WHO1$Country[WHO1$Population..Danso. == highestPopulation])
}
getCountryHighestPopulation()

# 6)
getGroup <- function(country) {
  return (WHO1$Group[WHO1$Country == country])
}
getGroup("China")
