myfunction <- function(x){
   mydata <- read.table(x, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".");
   newdata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,];
   head(newdata);

   ## plot2
   dtime <- strptime(paste(newdata$Date, newdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S");
   gp <- as.numeric(newdata$Global_active_power);
   png("plot2.png", width=480, height=480);
   plot(dtime, gp, type="l", xlab="", ylab="Global Active Power (kilowatts)");

   dev.off();
}
