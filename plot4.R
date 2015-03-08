x<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")
mydata<-x[x$Date=="1/2/2007" | x$Date=="2/2/2007" ,]
mydata$Date<-as.Date(mydata$Date,"%d/%m/%Y")

par(mfrow = c(2,2))

with(mydata, {
     plot(mydata$Global_active_power, type="l", col="black",xlab="", ylab="Global Active Power", main="")
     plot(mydata$Voltage, type="l", col="black",xlab="datetime", ylab="Voltage", main="")
     plot(mydata$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering", main="")
     lines(mydata$Sub_metering_2, type="l", col="red")
     lines(mydata$Sub_metering_3, type="l", col="blue")
     legend("topright", legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))
     plot(mydata$Global_reactive_power, type="l", col="black",xlab="datetime", ylab="Global_reactive_power", main="")
})

dev.copy(png, file="plot4.png")
dev.off()