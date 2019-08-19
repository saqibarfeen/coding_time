fig12x006<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Length2_2<-Perch$Length2*Perch$Length2
Perch$Length2_3<-Perch$Length2_2*Perch$Length2
#
plm<-lm(Weight ~ Length2 + Length2_2 + Length2_3,
data=Perch)
res<-residuals(plm)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),mfrow=c(2,1),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
plot(Perch$Length2,residuals(plm),ylab="Residual (g)",
xlab="Length from Nose to Notch of Tail (cm)",
xlim=c(0,50),ylim=c(-250,250),las=1,cex=0.5)
#
abline(c(0,0),lty=2)
#
par(mai=c(0.85,0.85,0.25,0.25))
#
plot(Perch$Weight,residuals(plm),ylab="Residual (g)",
xlab="Mass (g)",xlim=c(0,1200),ylim=c(-250,250),
las=1,cex=0.5)
#
abline(c(0,0),lty=2)
#
dev.copy2eps(file="fig12x006.eps")
dev.copy2pdf(file="fig12x006.pdf")
}

