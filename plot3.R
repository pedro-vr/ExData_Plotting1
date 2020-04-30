#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")

#Create a new variable for the date time
datetime <- strptime(paste(electric$Date, electric$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Transform all the three variables to numeric
subMet1 <- as.numeric(electric$Sub_metering_1)
subMet2 <- as.numeric(electric$Sub_metering_2)
subMet3 <- as.numeric(electric$Sub_metering_3)

#Make the figure
png("plot3.png", width=480, height=480)
plot(datetime, subMet1, type="l", ylab="Every Sub Metering")
lines(datetime, subMet2, type="l", col="red")
lines(datetime, subMet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()