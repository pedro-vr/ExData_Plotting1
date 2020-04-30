#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")
#We make the data series plot
par(mfrow = c(2, 2)) 
with(electric, {
  plot(Time,Global_active_power,xlab="datetime",ylab="Global Active Power (kilowatts)")
  plot(Time,Voltage,xlab="datetime",ylab="Voltage")  
  plot(Time,Sub_metering_1,xlab="datetime",ylab="Energy sub metering")
  plot(Time,Global_reactive_power,xlab="datetime",ylab="Global Reactive Power") })

#We save it to a png file
dev.copy(png,file = "/Users/pedrovela/Downloads/Others/Curso R/ExData_Plotting1/plot4.png")
dev.off()