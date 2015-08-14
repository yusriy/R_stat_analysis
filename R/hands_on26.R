# Hands-on 26

ho26_data <- read.csv('data/ho26_data.csv')

wilcox.test(ho26_data$before,ho26_data$after,paired=TRUE)
