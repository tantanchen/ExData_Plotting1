library(readr)

data <- read_delim("~/Downloads/household_power_consumption.txt", delim  = ";", na = "?")
Feb12 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
Feb12$DateTime <- as.POSIXct(paste(Feb12$Date, Feb12$Time), format="%d/%m/%Y %H:%M:%S")
hist(Feb12$Global_active_power, main = "Global Activate Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file = "plot1.png")  
dev.off()  
