data <- read.table("H:/R/Exploratory Data Analysis/household_power_consumption.txt",header = T,sep=";")
newdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(newdata$Global_active_power)
submetering1 <- as.numeric(newdata$Sub_metering_1)
submetering2 <- as.numeric(newdata$Sub_metering_2)
submetering3 <- as.numeric(newdata$Sub_metering_3)
voltage <- as.numeric(newdata$Voltage)
grp <- as.numeric(newdata$Global_reactive_power)
datetime <- strptime(paste(newdata$Date,newdata$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480,height=480)
par(mfrow=c(2,2))
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime,voltage,type="l", xlab="datetime", ylab="Voltage")

plot(datetime,submetering1,type='l',ylab="Energy sub metering",xlab="")
lines(datetime,submetering2,type='l',col='red')
lines(datetime,submetering3,type='l',col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))

plot(datetime, grp,type="l", xlab="datetime", ylab="Global_reactive_power" )

dev.off()
