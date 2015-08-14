# Hands-on 27

ho27_data <- read.csv('data/ho27_data.csv')

wilcox.test(ho27_data$G,ho27_data$R,paired=FALSE)
