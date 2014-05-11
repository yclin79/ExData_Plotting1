
data <- read.csv('data.txt', sep=';', 
                 colClasses=c('character', 'character', 'numeric',
                              'numeric','numeric', 'numeric'),
                 na.string="?")

png(filename = "plot2.png", width = 480, height = 480)
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
with(data, {
     plot(DateTime, Global_active_power, type="n", 
          ylab='Global Active Power (kilowatts)',
          xlab='')
     lines(DateTime, Global_active_power, col='black', main="", lty=1)
     })
dev.off()