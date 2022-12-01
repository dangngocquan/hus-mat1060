install.packages("MASS")
library(MASS)
data("Boston")
Boston

colSums(is.na(Boston))

summary(Boston)


# install.packages("magrittr") # package installations are only needed the first time you use it
# install.packages("dplyr")    # alternative installation of the %>%
# install.packages("corrr")
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)
library(corrr)
attach(Boston)
Boston %>% correlate(Boston) %>% focus(medv)

