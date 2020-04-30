#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")
#We make the data series plot
with(electric, plot(Time,Sub_metering_1)) 
with(electric, plot(Time,Sub_metering_2,col="red")) 
with(electric, plot(Time,Sub_metering_3,col="blue")) 
legend("topright",pch=20 ,col = c("black","red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
#We save it to a png file
dev.copy(png,file = "/Users/pedrovela/Downloads/Others/Curso R/ExData_Plotting1/plot3.png")
dev.off()