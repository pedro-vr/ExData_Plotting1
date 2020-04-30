#The data has been filtered before I loaded to R (with all clean)
electric <- read.table("/Users/pedrovela/Downloads/household_power_consumption.txt",header = TRUE,sep = ";")
#We make the histogram with all the values
hist(electric$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
#We sabve it to a png file
dev.copy(png,file = "/Users/pedrovela/Downloads/Others/Curso R/ExData_Plotting1/plot1.png")
dev.off()

