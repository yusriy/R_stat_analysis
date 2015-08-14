# Hands-on 19

library(XLConnect)

ho19_data <- readWorksheet(loadWorkbook('data/ho19_data.xlsx'),sheet=1)

names(ho19_data) <- c('Cu','Cd')

plot(ho19_data$Cu,ho19_data$Cd,xlab='Cu (mg/L)',ylab='Cd (mg/L)',pch=19,col='red')

r_cu_cd <- cor(ho19_data$Cu,ho19_data$Cd)

r_cu_cd
