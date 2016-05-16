## PLOT 4 png file setup

png(filename='plot4.png', width=480, height=480, units='px')

par(mfcol=c(2,2))

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Global_active_power)),type='l',ylab="Global Active Power", xlab="")

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Sub_metering_1)),type='l', xlab="",ylab ="Energy sub metering")
 lines(datasubset$DateTime, as.numeric(as.character(datasubset$Sub_metering_2)),type='l', col='red')
 lines(datasubset$DateTime, datasubset$Sub_metering_3,type='l', col="blue")
  legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                    lty=c(1,1,1),col=c("black","red","blue"))

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Voltage)),type='l', 
    ylab="Voltage",xlab="datetime" )

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Global_reactive_power)),type='l', 
    ylab="Global_reactive_power",xlab="datetime" )



dev.off()

