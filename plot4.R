source("loaddata.R")

myData <- loadData()

# Setup for a 2x2 plot grid to file plot4.png
png("plot4.png")
par(mfrow=c(2,2))

# Graph (1,1)
plot(myData$Time, myData$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
# Graph (1,2)
plot(myData$Time, myData$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
# Graph (2,1)
plot(myData$Time, myData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(myData$Time, myData$Sub_metering_2, col = "red")
lines(myData$Time, myData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
# Graph (2,2)
plot(myData$Time, myData$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

# Shut down graphical device, dumping data to file
dev.off()