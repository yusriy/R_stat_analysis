# Hands-on 23

ho23_data <- read.csv('data/ho23_data.csv')

viscosity <- c(ho23_data$r,ho23_data$r.1,ho23_data$r.2,ho23_data$u,ho23_data$u.1,
               ho23_data$u.2)

ratio <- as.factor(rep(seq(1,6),times=6))

ripe <- rep(c('r','u'),each=18)
ho23_df <- data.frame(viscosity,ratio,ripe)

result <- aov(viscosity~ratio+ripe+ratio*ripe,data=ho23_df)

summary(result)
