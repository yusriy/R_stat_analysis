# Hands-on 1
ho1_data <- read.table(file="data/ho1_data.txt",header=TRUE)

# Histogram plot
hist_info <- hist(ho1_data$no_defect,breaks=seq(14,35,by=3),xlab="No. of defective products",
                  main="Distribution of defective products",col='lightgreen')

hist_info

hist_info <- hist(ho1_data$no_defect,breaks=seq(14,35,by=3),xlab="No. of defective products",
                  main="Distribution of defective products",col='lightgreen',
                  freq=FALSE,ylim=c(0,0.12))

curve(dnorm(x,mean=mean(ho1_data$no_defect),sd=sd(ho1_data$no_defect)),add=TRUE,
      col='black',lwd=2)

# Frequency polygon plot
x <- c(12.5,hist_info$mids,35.5)
y <- c(0,hist_info$counts,0)
plot(x,y,type='o',xlab='Class midpoint',ylab='Frequency')

