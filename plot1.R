
data <- read.csv('data.txt', sep=';', 
                 colClasses=c('character', 'character', 'numeric',
                              'numeric','numeric', 'numeric'),
                 na.string="?")

png(filename = "plot1.png", width = 480, height = 480)
with(data, hist(Global_active_power, col='red', main="Global Active Power",
                xlab='Global Active Power (kilowatts)',
                ylab='Frequency'))
dev.off()