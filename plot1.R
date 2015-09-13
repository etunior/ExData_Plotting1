source("loaddata.R")

myData <- loadData()

# Setup for a plot to file plot1.png
png("plot1.png")

hist(myData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Shut down graphical device, dumping data to file
dev.off()