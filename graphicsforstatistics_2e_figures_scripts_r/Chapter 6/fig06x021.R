fig06x021<-function(){
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
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
#
plot(c(0,0),c(1200,0.004),xlim=c(0,1200),
ylim=c(0,0.004),main="",xlab="Mass (g)",
ylab="Relative Frequency",type="n")
#
bw_m=1.06*sd(mass)/(length(mass))^(1/5)
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="black")
#
bw_m=1.144*sd(mass)/(length(mass))^(1/5)
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="purple")
#
bw_m<-bw.nrd0(mass)
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="blue")
#
bw_m<-bw.bcv(mass)
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="green")
#
bw_m<-bw.SJ(x=mass,method="ste")
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="orange")
#
bw_m<-bw.ucv(mass)
den_mass<-density(mass,kernel="gaussian",
bw=bw_m,from=0,to=1200)
lines(den_mass$x,den_mass$y,col="red")
#
legend(x=400,y=0.00415,
legend=c(expression(UCV: ~~ lambda == 34.33),
expression(SJ: ~~ lambda == 58.93),
expression(BCV: ~~ lambda == 77.29),
expression(SROT: ~~ lambda == 139.86),
expression(SNR: ~~ lambda == 164.72),
expression(OS: ~~ lambda == 177.78)),
col=c("red","orange","green","blue","black","purple"),
lty=rep(1,6))
#
dev.copy2eps(file="fig06x021.eps",colormodel="cmyk")
dev.copy2pdf(file="fig06x021.pdf",colormodel="cmyk")
}

