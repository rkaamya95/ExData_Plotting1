final<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, skip=66636, nrows = 2880)
colnames(final)<-names(d1)
final$Date<-as.Date(final$Date, "%d/%m/%Y")
final <- final[complete.cases(final),]
datetime<-paste(final$Date, final$Time)
dateTime <- setNames(dateTime, "DateTime")
final<-cbind(datetime, final)
final$datetime<-as.POSIXct(datetime)
plot(c(final$Sub_metering_1,final$Sub_metering_2, final$Sub_metering_3)~c(final$datetime,final$datetime,final$datetime),col=c("black","red","blue"), type="l",ylab="Energy sub metering", xlab="")
legend("topright",lwd = c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()