# Input data
# age <- c(50, 62, 60, 40, 48, 47, 57, 70, 48)
# insulin <- c(16.5, 10.8, 32.3, 19.3, 14.2, 11.3, 15.5, 15.8, 16.2)
# data <- data.frame(age,insulin)
# data
# setwd("D:\\Study\\R\\HUSMAT1060\\MAT106004\\week04")
# save(data, file = "week04.rda")

# Read data from file .csv
# setwd("D:\\Study\\R\\HUSMAT1060\\MAT106004\\week04")
# data <- read.csv("Product.csv", header = TRUE)
# head(data)
# View(data)

# Read data from file .txt


# Read data from file .xlsx
# library(readxl)
# xlsx_example <- readxl_example("datasets.xlsx")
# read_excel(xlsx_example)

# Read data from packages
# library(MASS)
# data(Boston)
# dim(Boston)
# View(Boston)

#---------------------------------------------------------------

# Write file .csv
# data <- mtcars
# write.csv(data, "mtcars.csv")

# Write file .xlsx
# library(writexl)
# data <- mtcars
# write_xlsx(data, "mtcars.xlsx")

# --------------------------------------------------------------

# Process data
# df <- mtcars
# df$trans <- factor(df$am, levels = c(0, 1), labels = c("Automatic", "Manual"))
# df$trans

## v1 <- c(1, 1, 0)
## v2 <- c(1, 0)
## match(v1, v2)

# Match function
# oldvalues <- c("0", "1")
# newvalues <- factor(c("Automatic", "Manual"))
# df$trans2 <- newvalues[match(df$am, oldvalues)]

# Replace function
# df$trans3 <- df$am
# df$trans3 <- replace(df$trans3, df$am == 1, "Manual")
# df$trans3 <- replace(df$trans3, df$am == 0, "Automatic")

# df.power <- cut(df$hp, breaks = c(-Inf, 96.5, 180, Inf), labels = c("L", "M", "H"))
# df$power


# Convert vector type
# as.factor()
# as.character()
# as.numeric()

# Filter data
# df <- mtcars
# data1 <- df[3,]
# data2 <- df[,3]
# data3 <- df[c(1,2,3), c(4,5,6)]
# manual <- df[df$am == 1]
# manual2 <- df[df$am == 1 & df$wt > 2]

# Merge data
# df1 <- data.frame(row1 = c("a", "b", "c"), row2 = c("d", "e", "f"))
# df2 = data.frame(col1 = c("a", "b", "c"), col2 = c("Hello", "Geeks", "gfg"))
# df1
# df2
# df <- merge(df1, df2, by.x = "row1", by.y = "col1")
# df

