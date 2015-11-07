#Plot 4

png(filename='plot4.png', width=480, height=480, units='px')
par(mfrow=c(2,2))
plot(power$DateTime,
     power$Global_active_power, 
     type="l", 
     col="black",
     ylab="Global Active Power",
     xlab="",
     pch=1)
plot(power$DateTime,
     power$Voltage, 
     type="l", 
     col="black",
     ylab="voltage",
     xlab="datetime",
     pch=1)
plot(power$DateTime,
     power$Sub_metering_1, 
     ylab="Energy sub metering",
     xlab="",
     type="l")
lines(power$DateTime,
      power$Sub_metering_2, col="red")
lines(power$DateTime,
      power$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"),cex=0.6 , lty="solid" )
plot(power$DateTime,
     power$Global_reactive_power, 
     type="l", 
     col="black",
     ylab="Global_reactive_power",
     xlab="datetime",
     pch=1)
dev.off()
