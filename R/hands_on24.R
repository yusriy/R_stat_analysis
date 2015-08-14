# Hands-on 24

ho24_data <- read.csv('data/ho24_data.csv',header=FALSE)

names(ho24_data) <- 'Fe'

claim = 38

sign_pos <- ho24_data$Fe > claim

sign_neg <- ho24_data$Fe < claim

sign_no <- ho24_data$Fe == claim

no_pos <- sum(sign_pos)

no_neg <- sum(sign_neg)

no_no <- sum(sign_no)

binom.test(no_pos, no_pos + no_neg)
