# Hands-on 20

ho20_data <- read.csv(file = 'data/ho20_data.csv', header = TRUE)

lm_Y_X <- lm(Y~X,data=ho20_data)

lm_Y_X
