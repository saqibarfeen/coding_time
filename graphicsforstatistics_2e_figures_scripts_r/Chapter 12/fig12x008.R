fig12x008<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=6.6,pointsize=12)
par(fin=c(4.45,6.6),pin=c(4.45,6.55)
,mfrow=c(3,1),xaxs="r",yaxs="r",
cex.lab=1.5,cex.axis=1.5)
#
par(mai=c(0.125,0.85,0.65,0.25))
#
plot(Perch$Length2,Perch$Weight,xlab=" ",
ylab=" ",xlim=c(0,50),ylim=c(0,1200),las=1)
#
title(ylab="Mass(g)",line=5)
#
lines(smooth.spline(Perch$Length2,
Perch$Weight,df=36))
#
text(45,100,labels="df = 36",cex=1.5)
#
par(mai=c(0.375,0.85,0.375,0.25))
#
plot(Perch$Length2,Perch$Weight,xlab=" ",
ylab=" ",xlim=c(0,50),ylim=c(0,1200),las=1)
#
title(ylab="Mass(g)",line=5)
#
lines(smooth.spline(Perch$Length2,
Perch$Weight,df=5))
#
text(45,100,labels="df = 5",cex=1.5)
#
par(mai=c(0.75,0.85,0.125,0.25))
#
plot(Perch$Length2,Perch$Weight,xlab="Length (cm)",
ylab=" ",xlim=c(0,50),ylim=c(0,1200),las=1)
#
title(ylab="Mass(g)",line=5)
#
lines(smooth.spline(Perch$Length2,Perch$Weight,df=2))
#
text(45,100,labels="df = 2",cex=1.5)
#
dev.copy2eps(file="fig12x008.eps")
dev.copy2pdf(file="fig12x008.pdf")
}
