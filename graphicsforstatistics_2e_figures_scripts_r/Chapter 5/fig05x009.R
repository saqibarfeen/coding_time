fig05x009<-function(){
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
smass<-sort(mass)
pmass<-ppoints(length(mass))
pnmass<-qnorm(pmass)
#
plot(smass,pnmass,xlab="Mass (g)",
xlim=c(0,1200),ylim=c(-4,4),
ylab="Normal Percentiles",yaxt="n")
#
lprob<-c("0.01","0.1","1","5","10","25",
"50","75","95","90","99","99.9","99.99")
probly<-as.numeric(lprob)/100.
zprob<-qnorm(probly)
axis(2,zprob,lprob,las=2)
#
dev.copy2eps(file="fig05x009.eps")
dev.copy2pdf(file="fig05x009.pdf")
}

