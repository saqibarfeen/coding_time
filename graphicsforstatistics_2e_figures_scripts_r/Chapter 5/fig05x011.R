fig05x011<-function(){
obs<-c(53, 56, 75, 81, 81, 85, 87, 89, 95, 99, 100)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
ecdfobs<-ecdf(obs)
plot.stepfun(ecdfobs,xlab="Observations",
ylab="Empirical Distribution Function",
main=NULL,verticals=TRUE,do.points=FALSE,
pch=16,xlim=c(40,120))
#
arrows(max(obs),1.0,123,1.0,code=2,length=0.05)
arrows(37.,0.0,min(obs),0.0,code=1,length=0.05)
#
dev.copy2eps(file="fig05x011.eps")
dev.copy2pdf(file="fig05x011.pdf")
}
