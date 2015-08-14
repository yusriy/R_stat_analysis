# Hands-on 22

ho22_data <- read.csv('data/ho22_data.csv')

ho22_data <- t(ho22_data)
ho22_data <- ho22_data[-1,]

colnames(ho22_data) <- c('t15','t30','t45','t60')

ho22_data <- as.data.frame(ho22_data)

anova_data <- stack(ho22_data)

result <- aov(values~ind,data=anova_data)
summary(result)
