#   load_data.R
#   Author: Jacob Jozwiak
#
#   Reads data from the household_power_consumption.txt file. 
#   It combines the Date and Time columns into a single variable "Date_time". Note, to
#   save space and tidy the data, the script removes the original Date and Time variables
#   as they are no longer required. It only returns the data for the specified dates.
#
#   ASSUMPTION:
#   The lubridate and dplyr packages are installed. If missing, install by
#   install.packages("lubridate")
#   install.packages('dplyr)

library(lubridate)
library(dplyr)


load_data <- function(dates) {
    read.table("household_power_consumption.txt", 
               sep = ";", 
               header = T, 
               stringsAsFactors = F, 
               colClasses = c("character", "character", "numeric" , "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
               na.strings = "?") %>% 
    {.[.$Date %in% dates, ]} %>% 
    mutate(Date_time = parse_date_time(paste(Date, Time, sep = " "), "dmY HMS")) %>%
    {.[, 3:10]}
}