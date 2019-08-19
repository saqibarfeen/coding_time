fig07x016<-function(){
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
xlab="Mass (g)",xlim=c(0,1400),
xaxt="n",ylab="Relative Frequency"
,ylim=c(-0.0005,0.004))
axis(1,at=(0:7)*200,
labels=c("0","","400","","800","","1200",""))
#
# Fit and plot a Gram-Charlier series of type A
#
n<-length(mass)
m_mass<-mean(mass)
sd_mass<-sd(mass)
zed<-(mass-m_mass)/sd_mass
zed_t<-zed*zed*zed
z_m3<-sum(zed_t)/n
zed_t<-zed_t*zed
z_m4<-sum(zed_t)/n
#
c3<-z_m3/6
c4<-(z_m4-3)/24
#
phix<-function(x,meanx,sdx){dnorm((x-meanx)/sdx)/sdx}
#
H3<-function(x,meanx,sdx) {
z<-(x-meanx)/sdx
z*(z*z-3)*dnorm(z)/sdx
}
#
H4<-function(x,meanx,sdx) {
z<-(x-meanx)/sdx
(z*z*(z*z-6)+3)*dnorm(z)/sdx
}
GCA<-function(x,meanx,sdx,c3,c4) {
z<-(x-meanx)/sdx
dnorm(z)/sdx+c3*H3(x,meanx,sdx)+c4*H4(x,meanx,sdx)
}
#
curve(phix(x,m_mass,sd_mass),from=0,to=1400,
add=TRUE,lty=2,lwd=1.5)
curve(c3*H3(x,m_mass,sd_mass),from=0,to=1400,
add=TRUE,lty=3,lwd=1.5)
curve(c4*H4(x,m_mass,sd_mass),from=0,to=1400,
add=TRUE,lty=4,lwd=1.5)
curve(GCA(x,m_mass,sd_mass,c3,c4),from=0,to=1400,
add=TRUE,lty=1,lwd=1.5)
#
legend(x=800,y=0.004,legend=c("pdf",expression(H[0]),
expression(mu*"*"[3]~H[3]/6),expression(mu*"*"[4]~H[4]/24)),
lty=c(1,2,3,4),lwd=c(1.5,1.5,1.5,1.5))
#
dev.copy2eps(file="fig07x016.eps")
dev.copy2pdf(file="fig07x016.pdf")
}

