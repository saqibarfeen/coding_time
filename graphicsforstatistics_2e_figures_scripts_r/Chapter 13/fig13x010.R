fig13x010<-function(){
#
require(lattice)
require(RColorBrewer)
#
# Requires textbook R data set Fishcatch.RData 
# which contains dataframe Fishcatch
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.2),pin=c(4.45,6.25),
mai=c(0.,0.0,0.,0.),
xaxs="r",yaxs="r")
#
#
colpal<-rev(brewer.pal(7,"Dark2"))
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(5,7,6,4,2,1,3),
labels=c("Smelt","Perch","Pike","Silver Bream",
"Ide","Bream","Roach"))
#
attach(fc)
#
width<-equal.count(log(Width_pc*Length3/100),3,1/2)
height<-equal.count(log(Height_pc*Length3/100),3,1/2)
#
figure<-xyplot(log(Weight) ~ log(Length2) | width*height,
groups=Species,auto.key=list(columns=3),aspect=1,
par.settings = simpleTheme(pch=0:6,col=colpal),
xlab = "log(Length)",ylab = "log(Mass)",
strip=strip.custom(var.name=c("log(Width)","log(Height)")))
#
print(figure)
#
detach(fc)
#
dev.copy2eps(file="fig13x010.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x010.pdf",colormodel="cmyk")
}

