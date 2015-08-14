# Hands-on 20

ho20_data <- readWorksheet(loadWorkbook('data/ho20_data.xlsx'),sheet=1)

lm_Y_X <- lm(Y~X,data=ho20_data)

lm_Y_X
