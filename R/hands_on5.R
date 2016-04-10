# Hands-on 5
# From Hands-on 4, please click 'clear all' to reset plot window.
ho5_data <- read.csv(file = 'data/ho5_data.csv', header = TRUE)
dotchart(ho5_data$Zn..mg.L.,xlab='Zn (mg/L)',pch=19)
