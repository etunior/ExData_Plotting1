source("loaddata.R")

myData <- loadData()

# Setup for a plot to file plot2.png
png("plot2.png")

plot(myData$Time, myData$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# Shut down graphical device, dumping data to file
dev.off()