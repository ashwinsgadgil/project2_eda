 #CODE FOR PLOT2
 data2_1<-NEI[NEI$fips=="24510",]
data2<-aggregate(data2_1$Emissions,list(year=data2_1$year),sum)
png(file="plot2.png", width=480, height=480)
plot(data2$year,data2$x/1000,type='l',xlab="Year",ylab="PM2.5 Emissions in Baltimore City in Tonnes")
dev.off()	