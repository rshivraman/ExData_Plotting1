## PLOT 3 png file setup

png(filename='plot3.png', width=480, height=480, units='px')

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Sub_metering_1)),type='l', 
     ylab ="Energy sub metering", xlab="")
 lines(datasubset$DateTime, as.numeric(as.character(datasubset$Sub_metering_2)),type='l', col='red')
 lines(datasubset$DateTime, datasubset$Sub_metering_3,type='l', col="blue")
  legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                    lty=c(1,1,1)
                    ,col=c("black","red","blue"))

dev.off()





