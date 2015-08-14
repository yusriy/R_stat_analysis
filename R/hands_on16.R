# Hands-on 16

alpha <- qt(1-0.005,df=6)
alpha

mean = 101
sd = 1.1
n = 7

low_int <- mean - alpha * (sd/sqrt(n))
high_int <- mean + alpha * (sd/sqrt(n))


