#STEP 1
#Installs Packages
install.packages("dplyr")
install.packages("plyr")
install.packages("sqldf")
install.packages("ggplot2")



#Loads Required Packages
library(dplyr)
library(plyr)
library(sqldf)
library(ggplot2)
library(readr)

#STEP 2
#Creates Directory if doesn't Exist
if(!file.exists("./Power")) {dir.create("./Power")}

#Sets Vector to Wearables
dir <- "Power"


#Downloads DataSet and Unzips
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,destfile="Power\\PowerConsumption.zip")
unzip("Power\\PowerConsumption.zip", list = FALSE,exdir="Power", overwrite = TRUE)

#Reads File
power <- read.table(file="Power\\household_power_consumption.txt",header=TRUE, sep=";", na.string="?")



#Converts Date to Date Type and Creates a Datetime value
power$DateTime <- paste(power$Date,power$Time)
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$DateTime <- strptime(power$DateTime,format="%d/%m/%Y %H:%M:%S" )

#Applys date constraints
power <- subset(power, as.character(Date) == "2007-02-01" | as.character(Date) =="2007-02-02"   )


#Plot 1

png(filename='Power\\plot1.png', width=480, height=480, units='px')
hist(power$Global_active_power, 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red")
dev.off()