# Hands-on 21

ho21_data <- read.csv('data/ho21_data.csv')

lmTDI <- lm(TDI~RH+TD, data=ho21_data)
lmTDI
