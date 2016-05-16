## PLOT png file setup

png(filename='plot1.png', width=480, height=480, units='px')

## Now, plot the Histogram using the data file loaded in load_data.R

hist(as.numeric(as.character(datasubset$Global_active_power)), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()


