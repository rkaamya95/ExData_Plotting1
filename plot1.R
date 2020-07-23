new="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(new, destfile="C:/Users/User/Downloads/eda.zip")
dest<-"C:/Users/User/Downloads/eda"
unzip("C:/Users/User/Downloads/eda.zip", files=NULL, overwrite = FALSE,junkpaths = FALSE, exdir=dest)
setwd(dest)
d1<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
final_data<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, skip=66637, nrows = 2880)
colnames(final_data)<-names(d1)
hist(final_data$Global_active_power, xlab = "Global Active Power(kilowatts)", col = "red", main="Global Active Power")
dev.copy(png, "plot1.png")
dev.off