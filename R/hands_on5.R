# Hands-on 5
# From Hands-on 4, please click 'clear all' to reset plot window.
ho5_data <- readWorksheet(loadWorkbook('data/ho5_data.xlsx'),sheet=1)
dotchart(ho5_data$Zn..mg.L.,xlab='Zn (mg/L)',pch=19)
