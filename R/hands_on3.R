# Hands-on 3

ho3_data <- read.csv(file = 'data/ho3_data.csv',header=TRUE)
plot(ho3_data$Time..min.,ho3_data$Control,type='o',xlab='Time (min)',ylab='Hydrolysis (%)',
     axes=FALSE)

lines(ho3_data$Time..min.,ho3_data$GCPe,type='o',pch=19,col='blue')

legend("bottomright",c('Control','GCPe'),lty=c(1,1),pch=c(1,19),col=c('black','blue'))

axis(1,at=seq(0,200,by=10))
axis(2,at=seq(0,30,by=1))
box()
