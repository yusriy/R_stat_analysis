
jpeg('figs/prob_fig.jpeg', height = 10, width = 16, res = 360, units = 'cm')
par(mar=c(4,4,0.5,0.5))
# Figure to plot probability distribution function
x <- seq(-5,5,by=0.1)
y <- dt(x,df=9)
plot(x,y,xlab='Score',ylab='Probability',type='l')

# To determine the end point of the shaded area
i <- x[which(x < q[1])]
i <- length(i) + 1  # Add one more point to produce a straight vertical line
# on the left

k <- x[which(x < q[2])]
k <- length(k)

polygon(c(-2.2,x[i:k],2.2),c(0,y[i:k],0),col='grey90')
text(0, 0.05, 'Non-critical region', cex = 0.8)
text(-4, 0.05, 'Critical region', cex = 0.8)
text(4, 0.05, 'Critical region', cex = 0.8)

text(0, 0.2, 'Null hypothesis \n cannot be rejected',cex = 0.8)
text(-3.5, 0.2, 'Null hypothesis \n can be rejected', cex = 0.8)
text(3.5, 0.2, 'Null hypothesis \n can be rejected', cex = 0.8)
dev.off()