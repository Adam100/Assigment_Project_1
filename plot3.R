#Excersice 3#############################
par(mfcol = c(1, 1))

plot(d2$Date_Time, d2$Sub_metering_1, type = "n", 
     xlab = "", ylab = "Energy sub metering")
lines(x = d2$Date_Time, y = d2$Sub_metering_1)
lines(x = d2$Date_Time, y = d2$Sub_metering_2, col = "red")
lines(x = d2$Date_Time, y = d2$Sub_metering_3, col = "blue")
legend("topright"
       ,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       ,col = c("black", "red", "blue")
       ,lty=1)
