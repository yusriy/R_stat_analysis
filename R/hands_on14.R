# Hands-on 14

qchisq(0.025,df=19)
qchisq(0.975,df=19)

n = 20

sample_sd = 0.8

sd = 0.644

chi_test <- (n-1) * (sample_sd^2) /sd

chi_test


# Plotting

x <- seq(0,40,by=1)
y <- dchisq(x,df=19)
plot(x,y,type='l')
lb <- qchisq(0.025,df=19)
ub <- qchisq(0.975,df=19)
i <- x >= lb & x < ub
polygon(c(lb+0.1,x[i],ub-0.8),c(0,y[i],0),col='red')

lines(c(chi_test,chi_test),c(-0.1,0.08),lwd=2)

legend('topright',"Variance=0.644, chi=18.88199",lty=1,lwd=2,cex=0.75)
