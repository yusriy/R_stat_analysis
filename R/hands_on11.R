# Hands-on 11
install.packages('Hmisc')
library(Hmisc)

mean = 1765
sd = 100
n=36
manager_claim = 1750

z = (mean - manager_claim) / (sd / sqrt(n))

alpha = 0.05

z.alpha = qnorm(1 - alpha)

result <- alpha > z.alpha

x <- seq(-4,4,by = 0.1)

y <- dnorm(x)

plot(x,y,type='l',xlab='Z-score',ylab='Probability')

minor.tick()

# To determine the end point of the shaded area
i <- x[which(x < z.alpha)]
i <- length(i)
# To shade the area
polygon(c(-4,x[1:i],1.60),c(0,y[1:i],0),col='red')

lines(c(z,z),c(-0.1,0.5))

legend ("topleft",c("Manager's claim, z=0.90"))

text(c(2,-0.5),c(0.03,0.03),c("5%","Manager's claim is in the rejected zone"))
