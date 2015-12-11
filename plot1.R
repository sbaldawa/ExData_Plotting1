data <- read.table("H:/R/Exploratory Data Analysis/household_power_consumption.txt",header = T,sep=";")
newdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(newdata$Global_active_power)
png("plot1.png",width=480,height=480)
hist(gap,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
