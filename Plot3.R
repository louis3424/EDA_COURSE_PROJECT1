## Exploratory Data Analysis Project 1 - Plot 3

## Read in raw data files
raw.power.data <- read.csv('household_power_consumption.txt',sep = ';',stringsAsFactors = FALSE)

## Convert Date variables
raw.power.data$Date <- as.Date(raw.power.data$Date,format = "%d/%m/%Y")

## Subset out for 2-day period
feb.power.data <- raw.power.data[raw.power.data$Date >= '2007-02-01' & raw.power.data$Date <= '2007-02-02',]

## Print Line Graph to png file
png(filename = 'plot3.png')
plot(as.numeric(feb.power.data$Sub_metering_1),ylab = 'Energy sub metering',xaxt = 'n',xlab = '',ylim = c(-5,40),yaxs = 'i',type = 'n')
axis(1,at = c(0,1440,2880),labels = c('Thu','Fri','Sat'))
lines(as.numeric(feb.power.data$Sub_metering_1))
lines(as.numeric(feb.power.data$Sub_metering_2),col = 'red')
lines(as.numeric(feb.power.data$Sub_metering_3),col = 'blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty = 1,col = c('black','red','blue'))
dev.off()
