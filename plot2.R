#The data has been filtered before I loaded to R
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")
#We make the data series plot
plot(electric$Time,electric$Global_active_power,ylab="Global Active Power (kilowatts)")
#We save it to a png file
dev.copy(png,file = "/Users/pedrovela/Downloads/Others/Curso R/ExData_Plotting1/plot2.png")
dev.off()