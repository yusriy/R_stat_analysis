# Hands-on 2

ho2_data <- read.csv(file = "data/ho2_data.csv", header = TRUE)
names(ho2_data)[1] <- 'metal'
names(ho2_data)[2] <- 'concentration'

barplot(ho2_data$concentration,xlab="Heavy metal",ylab="Concentration in water (mg/L)",
        names.arg=ho2_data$metal,ylim=c(0,0.32),col='lightblue')
box()
