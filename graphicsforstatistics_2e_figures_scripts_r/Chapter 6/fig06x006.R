fig06x006<-function(){
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),mfrow=c(2,1),xaxs="r",bty="n")
#
# Scott's Rule
#
incscott<-3.49*sd(mass)/(length(mass))^(1/3)
emscott<-ceiling((max(mass)-min(mass))/incscott)
brkscott<-min(mass)+(0:emscott)*incscott
hist(mass,breaks=brkscott,freq=FALSE,main=NULL,xlab="Mass (g)",xlim=c(0,1400),
xaxt="n",ylab="Relative Frequency",ylim=c(0,0.004))
axis(1,at=(0:7)*200,labels=c("0","","400","","800","","1200",""))
text(x=1400,y=0.0035,labels="Scott's Rule",pos=2)
#
# Rule of Freedman and Diaconis
#
qmass<-quantile(mass,type=7)
iqrmass<-qmass[4]-qmass[2]
incfd<-2.*iqrmass/(length(mass))^(1/3)
emfd<-ceiling((max(mass)-min(mass))/incfd)
brkfd<-min(mass)+(0:emfd)*incfd
hist(mass,breaks=brkfd,freq=FALSE,main=NULL,xlab="Mass (g)",xlim=c(0,1400),
xaxt="n",ylab="Relative Frequency",ylim=c(0,0.004))
axis(1,at=(0:7)*200,labels=c("0","","400","","800","","1200",""))
text(x=1400,y=0.0035,labels="Freedman-Diaconis Rule",pos=2)
#
dev.copy2eps(file="fig06x006.eps")
dev.copy2pdf(file="fig06x006.pdf")
}
