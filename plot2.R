#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")

#Create a new variable for the date time
datetime <- strptime(paste(electric$Date, electric$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Transform the variable to numeric
globalAct <- as.numeric(electric$Global_active_power)
#Make the figure
png("plot2.png", width=480, height=480)
plot(datetime, globalAct, type="l", ylab="Global Active Power (kilowatts)")
dev.off()