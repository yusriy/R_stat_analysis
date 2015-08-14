# Hands-on 15

rnorm(1 - 0.025)

alpha <- qnorm(1-0.025)

mean = 13
sd = 2.5

n = 75
low_int <- mean - alpha * (sd/sqrt(n))

high_int <- mean + alpha * (sd/sqrt(n))
