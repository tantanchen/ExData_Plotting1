library(readr)

data <- read_delim("~/Downloads/household_power_consumption.txt", delim  = ";", na = "?")
Feb12 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
Feb12$DateTime <- as.POSIXct(paste(Feb12$Date, Feb12$Time), format="%d/%m/%Y %H:%M:%S")

plot(Feb12$DateTime, Feb12$Sub_metering_1, type = "l")
lines(Feb12$DateTime, Feb12$Sub_metering_2, col = "red")
lines(Feb12$DateTime, Feb12$Sub_metering_3, col = "blue")
legend("topright",pch ="-", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png")  
dev.off()  
