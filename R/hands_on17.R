# Hands-on 17

alpha <- qnorm(1-0.05)
alpha
p_hat <- 0.12
q = 1 - p_hat
n = 500
low_int <- p_hat - alpha * sqrt(p_hat * q /n)
high_int <- p_hat - alpha * sqrt(p_hat * q / n)