#Plot 3

png(filename='plot3.png', width=480, height=480, units='px')
plot(power$DateTime,
     power$Sub_metering_1, 
     ylab="Energy sub metering",
     xlab="",
     type="l")
lines(power$DateTime,
      power$Sub_metering_2, col="red")
lines(power$DateTime,
      power$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty="solid" )
dev.off()