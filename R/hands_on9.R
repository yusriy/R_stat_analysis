# Hands-on 9

ho9_data <- read.csv('data/ho9_data.csv')

temp_data <- range(ho9_data$Mg)

mg_range <- temp_data[2] - temp_data[1]