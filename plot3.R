x<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")
mydata<-x[x$Date=="1/2/2007" | x$Date=="2/2/2007" ,]
mydata$Date<-as.Date(mydata$Date,"%d/%m/%Y")

#with(mydata, plot(xlab="", ylab="Energy sub metering", main=""))
with(mydata, plot(mydata$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering", main=""))
with(mydata, lines(mydata$Sub_metering_2, type="l", col="red"))
with(mydata, lines(mydata$Sub_metering_3, type="l", col="blue"))
legend("topright", legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))

dev.copy(png, file="plot3.png")
dev.off()