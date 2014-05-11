
data <- read.csv('data.txt', sep=';', 
                 colClasses=c('character', 'character', 'numeric',
                              'numeric','numeric', 'numeric'),
                 na.string="?")

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

with(data, {
  plot(DateTime, Global_active_power, type="n", 
       ylab='Global Active Power',
       xlab='')
  lines(DateTime, Global_active_power, col='black', main="", lty=1)
})

with(data, {
  plot(DateTime, Voltage, type="n", 
       ylab='Voltage',
       xlab='datetime')
  lines(DateTime, Voltage, col='black', main="", lty=1)
})


with(data, {
  plot(DateTime, Sub_metering_1, type="n", 
       ylab='Energy sub metering',
       xlab='')
  lines(DateTime, Sub_metering_1, col='black', main="", lty=1)
  lines(DateTime, Sub_metering_2, col='red', main="", lty=1)
  lines(DateTime, Sub_metering_3, col='blue', main="", lty=1)
  legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
         lty=1, col=c('black', 'red','blue'), bty='n')
})

with(data, {
  plot(DateTime, Global_reactive_power, type="n", 
       ylab='Global_rective_power',
       xlab='datetime')
  lines(DateTime, Global_reactive_power, col='black', main="", lty=1)
})
dev.off()
