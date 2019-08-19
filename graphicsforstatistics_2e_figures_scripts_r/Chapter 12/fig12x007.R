fig12x007<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=6.6,pointsize=12)
par(fin=c(4.45,6.6),pin=c(4.45,6.55),
mfrow=c(3,1),xaxs="r",yaxs="r",
cex.lab=1.5,cex.axis=1.5)
#
par(mai=c(0.125,0.85,0.65,0.25))
plot(Perch$Weight,Perch$Length2,
ylab="Length (cm)",xlab=" ",
ylim=c(0,50),xlim=c(0,1200),las=1)
#
lines(smooth.spline(Perch$Weight,
Perch$Length2,df=38))
#
text(1100,5,labels="df = 38",cex=1.5)
#
par(mai=c(0.375,0.85,0.375,0.25))
#
plot(Perch$Weight,Perch$Length2,
ylab="Length (cm)",xlab=" ",ylim=c(0,50),
xlim=c(0,1200),las=1)
#
lines(smooth.spline(Perch$Weight,
Perch$Length2,df=5))
#
text(1100,5,labels="df = 5",cex=1.5)
#
par(mai=c(0.75,0.85,0.125,0.25))
#
plot(Perch$Weight,Perch$Length2,
ylab="Length (cm)",xlab="Mass (g)",
ylim=c(0,50),xlim=c(0,1200),las=1)
#
lines(smooth.spline(Perch$Weight,
Perch$Length2,df=2))
#
text(1100,5,labels="df = 2",cex=1.5)
#
dev.copy2eps(file="fig12x007.eps")
dev.copy2pdf(file="fig12x007.pdf")
}

