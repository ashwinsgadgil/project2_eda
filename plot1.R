# CODE FOR PLOT1
# Take aggregate data year-wise
 data1<-aggregate(NEI$Emissions,list(year=NEI$year),sum)
# Plot the data
png(file="plot1.png", width=480, height=480)
 plot(data1$year,data1$x/1000,type='l',xlab="Year",ylab="PM2.5 Emissions")
dev.off()