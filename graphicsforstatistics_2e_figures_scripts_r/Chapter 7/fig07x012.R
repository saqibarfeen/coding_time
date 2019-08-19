fig07x012<-function(){
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
# Variable width histogram
#
brks<-c(0,100,200,300,600,900,1200)
#
hist(mass,breaks=brks,freq=FALSE,main=NULL,
xlab="Mass (g)",xlim=c(0,1400),xaxt="n",
ylab="Relative Frequency",ylim=c(0,0.004))
#
axis(1,at=(0:7)*200,
labels=c("0","","400","","800","","1200",""))
#
# Fit and plot a mixture of two normals
#
logunlike<-function(x) {
d1<-dnorm(mass,mean=x[1],sd=x[3])
d2<-dnorm(mass,mean=x[2],sd=x[4])
temp<-x[5]*d1+(1.0-x[5])*d2
temp<--sum(log(abs(temp)))
ifelse(is.finite(temp),temp,0)
}
#
dmixnorm<-function(x,p) {
p[5]*dnorm(x,mean=p[1],sd=p[3])+
(1.0-p[5])*dnorm(x,mean=p[2],sd=p[4])
}
#
zed<-optim(c(100,800,100,200,0.5),
logunlike,method="L-BFGS-B",
lower=c(0,0,.00001,.00001,0),
upper=c(1000,1000,100000,100000,1),
control=list(maxit=1000))
#
if (zed$convergence == 0) curve(dmixnorm(x,zed$par),
from=0,to=1400,add=TRUE,lwd=1.5)
#
dev.copy2eps(file="fig07x012.eps")
dev.copy2pdf(file="fig07x012.pdf")
}

