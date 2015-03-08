x<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")
mydata<-x[x$Date=="1/2/2007" | x$Date=="2/2/2007" ,]
mydata$Date<-as.Date(mydata$Date,"%d/%m/%Y")

plot(mydata$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", main="", type="l")

dev.copy(png, file="plot2.png")
dev.off()