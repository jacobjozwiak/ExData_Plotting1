#   plot3.R
#   Author: Jacob Jozwiak
#
#   Creates a graph comparing the sub metering values for the dates 1-2 of February 2007.


source("load_data.R")

plot3 <- function() {
    #Load the data
    data <- load_data(c("1/2/2007", "2/2/2007"))
    
    #Open the png
    png(filename = "plot3.png")
    
    #Creates the plot for the three sub metering values with a legend in the top right corner
    with(data, {
        plot(Date_time, Sub_metering_1, type = "n",  ylab = "Energy sub metering", xlab = "")
        lines(Date_time, Sub_metering_1)
        lines(Date_time, Sub_metering_2, col = "red")
        lines(Date_time, Sub_metering_3, col = "blue")
        legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
    })
       
    #Close the png file
    dev.off()
}