fig06x004<-function(){
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
# Rule of Twelve
#
inc12<-(max(mass)-min(mass))/12.
brk12<-min(mass)+(0:12)*inc12
hist(mass,breaks=brk12,freq=FALSE,main=NULL,
xlab="Mass (g)",xlim=c(0,1400),xaxt="n",
ylab="Relative Frequency",ylim=c(0,0.004))
axis(1,at=(0:7)*200,
labels=c("0","","400","","800","","1200",""))
text(x=1400,y=0.0035,labels="Rule of Twelve",pos=2)
#
# Robust Rule of Twelve
#
qmass<-quantile(mass)
iqrmass<-qmass[4]-qmass[2]
inc12r<-4.45*iqrmass/12.
em12r<-ceiling((max(mass)-min(mass))/inc12r)
brk12r<-min(mass)+(0:em12r)*inc12r
hist(mass,breaks=brk12r,freq=FALSE,
main=NULL,xlab="Mass (g)",xlim=c(0,1400),xaxt="n",
ylab="Relative Frequency",ylim=c(0,0.004))
axis(1,at=(0:7)*200,
labels=c("0","","400","","800","","1200",""))
text(x=1400,y=0.0035,labels="Robust Rule of Twelve",pos=2)
#
dev.copy2eps(file="fig06x004.eps")
dev.copy2pdf(file="fig06x004.pdf")
}

