fig07x018<-function(){
#
# Nomogram for Pearson's curves with data point
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r",
bty="n",bg="white")
#
plot(c(0,2),c(0,9),type="n",xlim=c(0,3),ylim=c(1,9),
xlab=expression(beta [1]),
ylab=" ",xaxt="n",yaxt="n")
#
lines(c(0,0,3,3,0),c(1,9,9,1,1))
#
for (i in 1:5) segments(0,2*i+1,3,2*i+1,lty=2)
for (i in 1:5) segments(i/2,1,i/2,9,lty=2)
#
curve(1+x,from=0,to=3,add=TRUE)
symbols(x=2.0,y=1.95,
rectangles=matrix(c(1.25,0.65),byrow=TRUE,ncol=2,nrow=1),
inches=FALSE,bg="white",fg="white",add=TRUE)
#
text(2.0,2.0,"No distributions")
#
curve(3*x/2+3,from=0,to=3,add=TRUE)
#
symbols(1.1,4.625,circles=0.1,inches=FALSE,
bg="white",add=TRUE)
text(1.1,4.65,labels="III")
#
pcb<-function(x){
x^2/64+39*x/32+105/64 + 
sqrt(x^4+156*x^3+1686*x^2+7154*x+11025)/64
}
curve(pcb,from=0,to=3,add=TRUE)
#
symbols(1.4,5.835,circles=0.1,inches=FALSE,
bg="white",add=TRUE)
text(1.4,5.837,labels="V")
#
text(1.75,6.05,labels="VI")
#
curve(15*x/8+9/2,from=0,to=2.4,add=TRUE)
#
symbols(x=1.0,y=8.45,
rectangles=matrix(c(1.25,0.65),byrow=TRUE,
ncol=2,nrow=1),
inches=FALSE,bg="white",fg="white",add=TRUE)
#
text(1.0,8.5,"No Pearson curves")
#
text(1.875,7.383,"IV")
text(1.15,6.023,"IV")
text(0.425,4.664,"IV")
#
axis(1,at=0.5*(0:6),tick=FALSE,col="white")
#
axis(2,at=c(1,3,5,7,9),
labels=c("1.0","3.0","5.0","7.0","9.0"),
las=1,tick=FALSE,col="white")
mtext(expression(beta [2]),side=2,line=3,las=1)
#
symbols(0,3,squares=0.15,inches=FALSE,bg="white",
add=TRUE)
text(0,3,labels="G")
#
symbols(0.,1.975,circles=0.1,inches=FALSE,bg="white",
add=TRUE)
text(0.,2.,labels="II")
#
symbols(0,3.825,circles=0.12,inches=FALSE,bg="white",
add=TRUE)
text(0,3.825,labels="VII")
#
text(2.125,4.875,labels="I")
text(1.625,4.125,labels="I")
text(1.125,3.375,labels="I")
text(0.625,2.625,labels="I")
#
points(0,4.35,pch=24,bg="black")
points(0,3.35,pch=25,bg="black")
#
points(0,2.65,pch=24,bg="black")
points(0,1.15,pch=25,bg="black")
#
dev.copy2eps(file="fig07x018.eps")
dev.copy2pdf(file="fig07x018.pdf")
}
