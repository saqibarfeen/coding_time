fig07x015<-function(){
#
# First 5 functions in the Gram-Charlier series of Type A
#
graphics.off()
windows(width=4.5,height=3.2,pointsize=12)
par(fin=c(4.45,3.15),pin=c(4.45,3.15),
mai=c(0.75,0.75,0.0,0.25),xaxs="r",bty="n",las=1)
#
curve(dnorm(x),from=-4,to=4,lwd=1.5,ylim=c(-1.5,2.0),
xaxt="n",yaxt="n",xlab="x",ylab=" ",lty=1)
curve(x*dnorm(x),from=-4,to=4,lty=2,add=TRUE)
curve((x*x-1)*dnorm(x),from=-4,to=4,lty=3,add=TRUE)
curve((x*x*-3*x)*dnorm(x),from=-4,to=4,lty=4,add=TRUE)
curve((x*x*x*x-6*x*x+3)*dnorm(x),from=-4,to=7,lty=5,add=TRUE)
#
mtext("y",side=2,line=3)
axis(1,at=c(-4,-2,0,2,4))
axis(2,at=(-3:3)/2)
#
legend(x="topright",legend=c(expression(H[0]),
expression(H[1]),expression(H[2]),
expression(H[3]),expression(H[4])),lwd=c(1.5,rep(1,4)),
lty=c(1:5),bty="o")
#
dev.copy2eps(file="fig07x015.eps")
dev.copy2pdf(file="fig07x015.pdf")
}

