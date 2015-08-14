# Hands-on 25

ho25_data <- read.csv('data/ho25_data.csv')

diff <- ho25_data$after - ho25_data$before
pos <- sum(diff > 0)
neg <- sum(diff < 0)
zero <- sum(diff == 0)

binom.test(pos,pos+neg)