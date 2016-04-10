# Hands-on 5
# From Hands-on 4, please click 'clear all' to reset plot window.
ho5_data <- read.csv(file = 'data/ho5_data.csv', header = TRUE)
# Sort by concentration
x <- ho5_data[order(ho5_data$Zn..mg.L.),]
# Sorted order of Zn concentration
dotchart(x,pch=19,xlab='Zn (mg/L)',cex = 1)
dotchart(ho5_data$Zn..mg.L.,pch=19,xlab='Zn (mg/L)',cex = 1)


