
#Excersice 1#############################
with(householdpower, hist(Global_active_power
                          ,ylab = "Frequency"  
                          ,col="red"
                          ,bg="white"))

dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px")
dev.off()