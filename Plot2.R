## Exploratory Data Analysis Project 1 - Plot 2

## Read in raw data files
raw.power.data <- read.csv('household_power_consumption.txt',sep = ';',stringsAsFactors = FALSE)

## Convert Date variables
raw.power.data$Date <- as.Date(raw.power.data$Date,format = "%d/%m/%Y")

## Subset out for 2-day period
feb.power.data <- raw.power.data[raw.power.data$Date >= '2007-02-01' & raw.power.data$Date <= '2007-02-02',]

## Print Line Graph to png file
png(filename = 'plot2.png')
plot(as.numeric(feb.power.data$Global_active_power),ylab = 'Global Active Power (kilowatts)',xaxt = 'n',xlab = '',type = 'n')
axis(1,at = c(0,1440,2880),labels = c('Thu','Fri','Sat'))
lines(as.numeric(feb.power.data$Global_active_power))
dev.off()
