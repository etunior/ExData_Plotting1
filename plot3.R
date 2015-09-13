source("loaddata.R")

myData <- loadData()

# Setup for a plot to file plot3.png
png("plot3.png")

plot(myData$Time, myData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(myData$Time, myData$Sub_metering_2, col = "red")
lines(myData$Time, myData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

# Shut down graphical device, dumping data to file
dev.off()

