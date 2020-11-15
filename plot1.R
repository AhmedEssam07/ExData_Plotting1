library(lubridate)
#Reading all data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Naming all coloumns
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#extracting our data of concern
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
hist(subpower$Global_active_power,xlab = "Global Active Power (KiloWatts)",ylab = "Frequency", main = "Global Active Power",col = "red")

png(filename = "plot1.png")
dev.off()