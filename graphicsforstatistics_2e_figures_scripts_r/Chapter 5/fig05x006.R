fig05x006<-function(){
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
sn<-ppoints(length(mass))
sshape<-mean(mass)/sd(mass)
sshape<-sshape*sshape
sscale<-var(mass)/mean(mass)
smass<-sort(mass)
sq<-qgamma(sn,shape=sshape,scale=sscale)
#
plot(sq,smass,ylab="Mass (g)",
xlab="Gamma Quantile",ylim=c(0,1200),
xlim=c(0,2000))
#
dev.copy2eps(file="fig05x006.eps")
dev.copy2pdf(file="fig05x006.pdf")
}

