#   plot1.R
#   Author: Jacob Jozwiak
#
#   Creates a frequency historgram of Global Active Power for the dates 1-2 of February 2007.

source("load_data.R")

plot1 <- function() {
    #Read data
    data <- load_data(c("1/2/2007", "2/2/2007"))
    
    #Open png file
    png(filename = "plot1.png")
    
    #Plot histogram
    with(data, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))
    
    #Close png file
    dev.off()
}