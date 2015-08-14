# Hands-on 18

alpha = 0
alpha[1] <- qchisq(0.025,df=19)
alpha[2] <- qchisq(1-0.025,df=19)
alpha

n = 20
sd = 2
int = 0
int[1] <- (n-1) * sd^2 / alpha[1]
int[2] <- (n-1) * sd^2 / alpha[2]