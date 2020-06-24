## Exploratory Data Analysis Project 1 - Plot 1

## Read in raw data files
raw.power.data <- read.csv('household_power_consumption.txt',sep = ';',stringsAsFactors = FALSE)

## Convert Date variables
raw.power.data$Date <- as.Date(raw.power.data$Date,format = "%d/%m/%Y")

## Subset out for 2-day period
feb.power.data <- raw.power.data[raw.power.data$Date >= '2007-02-01' & raw.power.data$Date <= '2007-02-02',]

## Print Histogram Plot to png file
png(filename = 'plot1.png')
hist(as.numeric(feb.power.data$Global_active_power),main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)',col = 'red')
dev.off()
