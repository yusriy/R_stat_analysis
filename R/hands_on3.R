# Hands-on 3

ho3_data <- read.csv(file = 'data/ho3_data.csv',header=TRUE)
plot(ho3_data$Time..min.,ho3_data$Control,type='o',xlab='Time (min)',ylab='Hydrolysis (%)',
     axes=FALSE)

lines(ho3_data$Time..min.,ho3_data$GCPe,type='o',pch=19,col='blue')

legend("bottomright",c('Control','GCPe'),lty=c(1,1),pch=c(1,19),col=c('black','blue'))

axis(1,at=seq(0,200,by=10))
axis(2,at=seq(0,30,by=1))
box()

# To export using code (recommended)

jpeg('figs/ho3_data_code.jpeg', res = 360, height = 8, width = 8, units = 'cm')

par(mar = c(3.1,3.1,1.1,1.1), mgp = c(3.0,0.3,0), family = 'Times')
plot(ho3_data$Time..min.,ho3_data$Control,type='o',xlab='',ylab='',
     axes=FALSE)
mtext(side = 1, 'Time (min)', line = 1.8, cex = 1.2)
mtext(side = 2, 'Hydrolysis (%)', line = 1.8, cex = 1.2)

lines(ho3_data$Time..min.,ho3_data$GCPe,type='o',pch=19,col='blue')

legend("bottomright",c('Control','GCPe'),lty=c(1,1),pch=c(1,19),col=c('black','blue'))

axis(1,at=seq(0,200,by=10),tck=-0.02)
axis(2,at=seq(0,30,by=1),tck=-0.02)

box()

dev.off()
