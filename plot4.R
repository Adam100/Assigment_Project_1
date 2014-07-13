#Excersice 4#############################

par(mfcol = c(2, 2), oma=c(0,0,0,0), mar=c(2,2,2,2))


## plot1
plot(d2$Date_Time, d2$Global_active_power
     ,type='l'
     ,xlab=''  
     ,ylab='Global Active Power'
     
)

## plot2
plot(d2$Date_Time, d2$Sub_metering_1, type = "n", 
     xlab = "", ylab = "Energy sub metering")
lines(x = d2$Date_Time, y = d2$Sub_metering_1)
lines(x = d2$Date_Time, y = d2$Sub_metering_2, col = "red")
lines(x = d2$Date_Time, y = d2$Sub_metering_3, col = "blue")
legend("topright"
       ,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       ,col = c("black", "red", "blue")
       ,lty=1, bty="n")

## plot3
plot(x = householdpower$Date_Time, y = householdpower$Voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage")

## plot4
plot(d2$Date_Time, d2$Global_reactive_power, 
     type = "l", xlab = "datetime", ylab = "Global Reactive Power")

dev.copy(png, filename = "plot4.png", width = 480, height = 480, units = "px")
dev.off()