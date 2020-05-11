#   plot2.R
#   Author: Jacob Jozwiak
#
#   Creates a line graph of Global Active Power for the dates 1-2 of February 2007.

source("load_data.R")

plot2 <- function() {
    #Read data
    data <- load_data(c("1/2/2007", "2/2/2007"))
    
    #Open png file
    png(filename = "plot2.png")
    
    #Plot the line graph
    with(data, plot(Date_time, Global_active_power, type = "l",  ylab = "Global Active Power (kilowatts)", xlab = ""))
    
    #Close png file
    dev.off()
}