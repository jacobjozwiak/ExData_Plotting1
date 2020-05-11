#   plot4.R
#   Author: Jacob Jozwiak
#
#   Creates four charts in a 2x2 configuration for the dates 1-2 of February 2007.


source("load_data.R")

plot4 <- function() {
    data <- load_data(c("1/2/2007", "2/2/2007"))
    png(filename = "plot4.png")
    
    with(data, {
        #2 columns and 2 rows
        par(mfcol = c(2, 2))
        #Top Left Plot
        plot(Date_time, Global_active_power, type = "l",  ylab = "Global Active Power (kilowatts)", xlab = "")
        #Botton Left Plot
        plot(Date_time, Sub_metering_1, type = "n",  ylab = "Energy sub metering", xlab = "")
        lines(Date_time, Sub_metering_1)
        lines(Date_time, Sub_metering_2, col = "red")
        lines(Date_time, Sub_metering_3, col = "blue")
        legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1, bty = "n")
        
        #Top Right Plot
        plot(Date_time, Voltage, type = "l", xlab = "datetime")
        
        #Bottom Right Plot
        plot(Date_time, Global_reactive_power, type = "l", xlab = "datetime")
    })
    
    dev.off()
}