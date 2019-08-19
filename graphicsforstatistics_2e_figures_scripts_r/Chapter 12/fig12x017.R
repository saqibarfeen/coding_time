fig12x017<-function(){
#
require(KernSmooth)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
plot(Perch$Weight,Perch$Length2,
ylab="Length from Nose to Notch of Tail (cm)",
xlab="Mass (g)",ylim=c(0,50),xlim=c(0,1200),
las=1,cex=0.5)
#
lines(lowess(Perch$Weight,Perch$Length2,delta=0))
#
x<-Perch$Weight
y<-Perch$Length2
#
lines(locpoly(x,y,kernel="normal",degree=1,bandwidth=100),lty=2)
lines(locpoly(x,y,kernel="normal",degree=0,bandwidth=100),lty=3)
#
legend(200,13.25,legend=c("LOWESS","Linear, Gaussian kernel",
"Constant, Gaussian kernel"),lty=c(1,2,3))
#
dev.copy2eps(file="fig12x017.eps")
dev.copy2pdf(file="fig12x017.pdf")
}
