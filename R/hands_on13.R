# Hands-on 13

z.alpha <- qnorm(1 -0.05)

positive <- 51
negative <- 123

total1 <- positive + negative

p_hat <- positive/total1

p = 0.20
q = 1 - p

z = (p_hat - p) / sqrt(p*q/total1)
