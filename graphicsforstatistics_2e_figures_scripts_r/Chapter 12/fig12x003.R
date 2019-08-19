fig12x003<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Weight2<-Perch$Weight*Perch$Weight
Perch$Weight3<-Perch$Weight2*Perch$Weight
#
plm<-lm(Length2 ~ Weight + Weight2 + 
Weight3,data=Perch)
coefs<-coef(plm)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),mfrow=c(2,1),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
plot(Perch$Length2,residuals(plm),
ylab="Residual (cm)",
xlab="Length from Nose to Notch of Tail (cm)",
xlim=c(0,50),ylim=c(-5,5),las=1,cex=0.5)
#
abline(c(0,0),lty=2)
#
par(mai=c(0.85,0.85,0.25,0.25))
#
plot(Perch$Weight,residuals(plm),
ylab="Residual (cm)",xlab="Mass (g)",
xlim=c(0,1200),ylim=c(-5,5),las=1,cex=0.5)
#
abline(c(0,0),lty=2)
#
dev.copy2eps(file="fig12x003.eps")
dev.copy2pdf(file="fig12x003.pdf")
}
