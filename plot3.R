
data <- read.csv('data.txt', sep=';', 
                 colClasses=c('character', 'character', 'numeric',
                              'numeric','numeric', 'numeric'),
                 na.string="?")

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480)
with(data, {
  plot(DateTime, Sub_metering_1, type="n", 
       ylab='Energy sub metering',
       xlab='')
  lines(DateTime, Sub_metering_1, col='black', main="", lty=1)
  lines(DateTime, Sub_metering_2, col='red', main="", lty=1)
  lines(DateTime, Sub_metering_3, col='blue', main="", lty=1)
  legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
         lty=1, col=c('black', 'red','blue'))
})
dev.off()
