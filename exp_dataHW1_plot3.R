myfunction <- function(x){
   mydata <- read.table(x, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".");
   newdata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,];
   head(newdata);

   ## plot3
   sm1 <- as.numeric(newdata$Sub_metering_1);
   sm2 <- as.numeric(newdata$Sub_metering_2);
   sm3 <- as.numeric(newdata$Sub_metering_3);
   dtime <- strptime(paste(newdata$Date, newdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S");
   png("plot3.png", width=480, height=480);
   plot(dtime, sm1, type="l", xlab="", ylab="Energy sub metering", col = "black");
   lines(dtime,sm2,type="l", col="red");
   lines(dtime,sm3,type="l", col="blue");
   legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"));
   dev.off();
}
