##  Read the data file that is already downloaded and extracted into the work directory

HHPowerdata<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")

## Create a new variable by concatenating Date and Time.

HHPowerdata$DateTime<-paste(HHPowerdata$Date, data$Time)

## Change DateTime to yyyy-mm-dd hh:mm:ss

HHPowerdata$DateTime<-strptime(HHPowerdata$DateTime, "%d/%m/%Y %H:%M:%S")

## Filter the data for dates 2007-02-01 and 2007-02-02

startdt<-which(HHPowerdata$DateTime==strptime("2007-02-01", "%Y-%m-%d"))

enddt<-which(HHPowerdata$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))

datasubset<-HHPowerdata[startdt:enddt,]

## Write the filtered data into a text file for adding to the repo

write.table(datasubset, file = "data.txt", row.names = FALSE) 





