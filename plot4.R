#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",
                       header = TRUE,sep = ";")

#Create a new variable for the date time
datetime <- strptime(paste(electric$Date, electric$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Transform all the variables to numeric
globalAct <- as.numeric(electric$Global_active_power)
globalReact <- as.numeric(electric$Global_reactive_power)
volt <- as.numeric(electric$Voltage)
subMet1 <- as.numeric(electric$Sub_metering_1)
subMet2 <- as.numeric(electric$Sub_metering_2)
subMet3 <- as.numeric(electric$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globalAct, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, volt, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMet1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, subMet2, type="l", col="red")
lines(datetime, subMet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReact, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()