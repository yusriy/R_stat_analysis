# Hands-on 8

ho8_data <- read.csv('data/ho8_data.csv')

table(ho8_data$pm1)

test_data <- c(ho8_data$pm1,108.64)

test_data <- table(test_data)

mode <- names(test_data)[test_data==max(test_data)]
