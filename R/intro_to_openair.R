# Intro to openair

# Install package
#install.packages('openair')

# Load package
library(openair)

# Load sample data
data(mydata)
attach(mydata)

# Averaging
daily_avg <- timeAverage(mydata, avg.time = 'day')
halfhour_avg <- timeAverage(mydata, avg.time = '30 min')

# Plot windrose
windRose(mydata)

# Time series plot
timePlot(mydata, pollutant = 'pm10')

# Time variation plot
timeVariation(mydata, pollutant = 'pm10')

# Polar plot
polarPlot(mydata, pollutant = 'pm10')
