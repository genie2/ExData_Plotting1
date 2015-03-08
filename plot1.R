x<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")
mydata<-x[x$Date=="1/2/2007" | x$Date=="2/2/2007" ,]
hist(mydata$Global_active_power, xlab="Global Active Power(kilowatts)", main="Global Active Power", col="red")
dev.copy(png, file="plot1.png")
dev.off()