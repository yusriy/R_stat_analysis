# Hands-on 12

sample_mean = 277.75
mean = 275
sd = 2.725
n = 10

q <- qt(c(0.025,0.975),df=9)


x <- seq(-5,5,by=0.1)
y <- dt(x,df=9)
plot(x,y,xlab='t',ylab='t(x)',type='l',main='T distribution with DOF=9')

# To determine the end point of the shaded area
i <- x[which(x < q[1])]
i <- length(i) + 1  # Add one more point to produce a straight vertical line
                    # on the left

k <- x[which(x < q[2])]
k <- length(k)

polygon(c(-2.2,x[i:k],2.2),c(0,y[i:k],0),col='red')

lines(rep(q[2],2),c(-0.01,0.5))

legend('topleft',"Manufacturer's claim, t=2.61",lty=1,cex=0.7)
text(c(-3,3.2),c(0.05,0.05),c('2.5%','2.5%'))
text(0,0.1,"Non-rejection zone")
