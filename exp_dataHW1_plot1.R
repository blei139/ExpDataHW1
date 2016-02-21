myfunction <- function(x){
   mydata <- read.table(x, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".");
   newdata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,];
   head(newdata);

   gP <- as.numeric(newdata$Global_active_power);
   png("plot1.png", width=480, height=480);
   hist(gP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)");

   dev.off();
}
