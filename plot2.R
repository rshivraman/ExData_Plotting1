## PLOT 2 png file setup

png(filename='plot2.png', width=480, height=480, units='px')

## Now,  plot the observations

plot(datasubset$DateTime, as.numeric(as.character(datasubset$Global_active_power)), type='l',ylab="Global Active Power (Kilowatts)", xlab="")

dev.off()

