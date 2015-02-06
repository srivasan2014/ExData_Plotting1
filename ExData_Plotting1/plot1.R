a<-read.csv("household_power_consumption.txt",sep=";")
b<-a[a$Date=="1/2/2007",]
c<-a[a$Date=="2/2/2007",]
d<-rbind(b,c)
e<-as.numeric(paste(d[,3]))
png("plot1.png", width=480, height=480)
par(bg = "thistle")
hist(e,col="red",main="Global active power",xlab="Global Active Power(Killowats)",ylab="Frequency")
dev.off()
