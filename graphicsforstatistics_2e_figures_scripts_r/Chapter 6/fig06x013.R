fig06x013<-function(){
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
epanechnikov<-function(x,xi=0.,lambda=1.) {
z<-(x-xi)/lambda
epanechnikov <-ifelse(abs(z)<= sqrt(5.), 3.*(1-z*z/5.)/(4.*sqrt(5.)),0.)
}
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
den_mass<-density(mass,kernel="epanechnikov",from=0,to=1200)
plot(den_mass,ylim=c(0,0.002),main="",xlab="Mass (g)",
ylab="Relative Frequency",zero.line="FALSE")
#
bw<-den_mass$bw
n_mass<-length(mass)
#
xxx<-0:1200
n_xxx<-length(xxx)
yyy<-rep(0,n_xxx)
#
for (i in 1:56) {
curve(4.*epanechnikov(x,mass[i],bw)/(n_mass*bw),from=0,to=1200,
add=TRUE,col="black")
for (j in 1:n_xxx) yyy[j]<-yyy[j]+epanechnikov(xxx[j],mass[i],bw)/(n_mass*bw)
}
#
dev.copy2eps(file="fig06x013.eps")
dev.copy2pdf(file="fig06x013.pdf")
}

