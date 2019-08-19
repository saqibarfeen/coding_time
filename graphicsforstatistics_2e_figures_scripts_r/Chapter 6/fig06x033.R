fig06x033<-function(){
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
plot(c(-2,2),c(0,1.4),xlab="z",ylab="",type="n",axes=FALSE)
#
axis(1,at=-2:2)
axis(2,at=(0:5)*0.2,las=1)
#
mtext("K",side=2,line=3,las=1,at=0.5)
#
# kernel functions
#
epanech<-function(x) ifelse(abs(x)<=1,(1-x^2)*3/4,0)
curve(epanech,from=-2,to=2,add=TRUE,lty=1)
#
cosinec<-function(x) ifelse(abs(x)<=1,cos(x*pi/2)*pi/4,0)
curve(cosinec,from=-2,to=2,add=TRUE,lty=2)
#
cosinea<-function(x) ifelse(abs(x)<=1,(1+cos(x*pi))/2,0)
curve(cosinea,from=-2,to=2,add=TRUE,lty=3)
#
legend(-0.5,1.4,
legend=c(expression(K [A]),expression(K [C]),expression(K [E])),
lty=c(3,2,1))
#
dev.copy2eps(file="fig06x033.eps")
dev.copy2pdf(file="fig06x033.pdf")
}
