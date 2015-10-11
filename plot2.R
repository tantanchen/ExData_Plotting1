library(readr)

data <- read_delim("~/Downloads/household_power_consumption.txt", delim  = ";", na = "?")
Feb12 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
Feb12$DateTime <- as.POSIXct(paste(Feb12$Date, Feb12$Time), format="%d/%m/%Y %H:%M:%S")
plot(Feb12$DateTime, Feb12$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png")  
dev.off()  
