# This file exposes a simple function to load and transform the household power
# consumption data.

loadData <- function(){
  # Loads the household power consumption data into memory. Since the days of
  # interest is the same for all plots, this function will also subset the data
  # to the days of interest.
  # 
  # Args:
  #   empty
  #
  # Returns:
  #   A dataframe with the subset of interest of the household power
  #   consumption data.
  
  myData <- read.table(unz(file.path("household_power_consumption.zip"), 
                         "household_power_consumption.txt"), 
                     header=T, sep=";", na.strings = "?")
  #myData <- read.table(file.path("household_power_consumption.txt"),
  #                     header = TRUE, sep = ";", na.strings = "?")
  myData$Date <- as.Date(myData$Date, "%d/%m/%Y")
  myData$Time <- strptime(paste(myData$Date, myData$Time), "%Y-%m-%d %H:%M:%S")
  datesOfInterest <- as.Date(c("2007-02-01", "2007-02-02"))
  myData <- myData[myData$Date %in% datesOfInterest,]
  myData
}