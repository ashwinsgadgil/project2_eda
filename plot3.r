#CODE FOR PLOT3
data2_1<-NEI[NEI$fips=="24510",]
data3<-aggregate(data2_1$Emissions,list(year=data2_1$year,type=data2_1$type),sum)
library(ggplot2)
g<-ggplot(data3,aes(year,x))
p <- g + layer(geom = "bar", 
                       mapping = aes(fill = type), 
                       position = "dodge", 
                       stat = "identity")
        p <- p + ylab("PM2.5 Emissions, in tons")
        p <- p + xlab("Year")
        p <- p + ggtitle("PM2.5 Emissions by type, Baltimore City")
ggsave("plot3.png", dpi = 80, height = 5, width = 7)