#Plot 2

png(filename='plot2.png', width=480, height=480, units='px')
plot(power$DateTime,
     power$Global_active_power, 
     type="l", 
     col="black",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     pch=1)
dev.off()