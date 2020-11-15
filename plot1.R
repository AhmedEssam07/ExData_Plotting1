library(lubridate)
alldata<- read.table("household_power_consumption.txt",skip = 1, sep = ";",na.strings = "?")
names(alldata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
alldata$Date<- as.Date(alldata$Date)
DataOfConcern<- subset(alldata, alldata$Date =="01-02-2007"|alldata$Date =="02-02-2007")

DataOfConcern<- DataOfConcern[!is.na(DataOfConcern$Global_active_power),]


hist(DataOfConcern$Global_active_power,xlab = "Global Active Power (KiloWatts)",ylab = "Frequency", main = "Global Active Power",col = "red")


png(filename = "plot1.png")
dev.off()