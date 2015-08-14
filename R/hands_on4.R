# Hands-on 4
ho4_data <- data.frame(c('Not Good','Good','Very Good'),c(5,11,8))
names(ho4_data) <- c('Class','Frequency')

par(mar=c(0.01,0.01,0.01,0.01))
pie(ho4_data$Frequency,ho4_data$Class,cex=2)