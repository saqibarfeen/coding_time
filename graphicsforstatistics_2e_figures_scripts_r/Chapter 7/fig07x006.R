fig07x006<-function(){
#
# Comparison of normal quantile-quantile of
# perch mass and its base 10 logarithm
#
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
graphics.off()
windows(width=4.5,height=6.73,pointsize=12)
par(fin=c(4.45,6.68),pin=c(4.45,6.68),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n",mfrow=c(3,1))
#
qqnorm(mass,main=NULL,ylab = "Mass (g)",
xlab="Standard Normal Quantiles",
ylim=c(0,1200),xlim=c(-3,3))
#
abline(a=mean(mass),b=sd(mass))
#
l_mass<-log10(mass)
#
qqnorm(l_mass,main=NULL,
ylab = expression(log[10]~ group("[",Mass~~(g),"]")),
xlab="Standard Normal Quantiles",ylim=c(1,3.5),xlim=c(-3,3))
#
abline(a=median(l_mass),b=sd(l_mass))
#
qqnorm(mass^(1/6),main=NULL,ylab = expression(sqrt(Mass~~(g),6)),
xlab="Standard Normal Quantiles",ylim=c(1.0,3.5),xlim=c(-3,3))
#
abline(a=mean(mass^(1/6)),b=sd(mass^(1/6)))
dev.copy2eps(file="fig07x006.eps")
dev.copy2pdf(file="fig07x006.pdf")
}

