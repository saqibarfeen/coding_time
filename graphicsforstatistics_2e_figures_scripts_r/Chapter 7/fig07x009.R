fig07x009<-function(){
#
# Nomogram for Pearson's curves with data point
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r",
bty="n",bg="white")
#
plot(c(0,2),c(0,9),type="n",xlim=c(0,2),
ylim=c(1,9),xlab=expression(beta [1]),
ylab=" ",xaxt="n",yaxt="n")
#
lines(c(0,0,2,2,0),c(1,9,9,1,1))
for (i in 1:3) segments(0,2*i+1,2,2*i+1,lty=2)
for (i in 1:3) segments(i/2,1,i/2,9,lty=2)
#
curve(1+x,from=0,to=2,add=TRUE)
#
symbols(x=1.6,y=1.5,
rectangles=matrix(c(0.75,0.45),byrow=TRUE,
ncol=2,nrow=1),inches=FALSE,bg="white",
fg="white",add=TRUE)
text(1.6,1.5,"No distributions")
#
curve(3*x/2+3,from=0,to=2,add=TRUE)
#
symbols(1.1,4.625,circles=0.07,inches=FALSE,
bg="white",add=TRUE)
text(1.1,4.65,labels="III")
#
pcb<-function(x){
x^2/64+39*x/32+105/64 + 
sqrt(x^4+156*x^3+1686*x^2+7154*x+11025)/64
}
curve(pcb,from=0,to=2,add=TRUE)
#
symbols(1.4,5.835,circles=0.07,
inches=FALSE,bg="white",add=TRUE)
text(1.4,5.837,labels="V")
#
text(1.75,6.05,labels="VI")
#
curve(15*x/8+9/2,from=0,to=2,add=TRUE)
#
symbols(x=0.5,y=8.5,
rectangles=matrix(c(0.9,0.45),
byrow=TRUE,ncol=2,nrow=1),inches=FALSE,bg="white",
fg="white",add=TRUE)
text(0.5,8.5,"No Pearson curves")
#
text(1.875,7.383,"IV")
text(1.15,6.023,"IV")
text(0.425,4.664,"IV")
#
axis(1,at=0.5*(0:4),tick=FALSE,col="white")
#
axis(2,at=c(1,3,5,7,9),
labels=c("1.0","3.0","5.0","7.0","9.0"),
las=1,tick=FALSE,col="white")
mtext(expression(beta [2]),side=2,line=3,las=1)
#
symbols(0,3,squares=0.1,inches=FALSE,bg="white",
add=TRUE)
text(0,3,labels="G")
#
symbols(0.,1.975,circles=0.07,inches=FALSE,
bg="white",add=TRUE)
text(0.,2.,labels="II")
#
symbols(0,3.825,circles=0.08,inches=FALSE,
bg="white",add=TRUE)
text(0,3.825,labels="VII")
#
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
# Estimate of skewness and kurtosis for perch mass
#
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
n<-length(mass)
diff<-mass-mean(mass)
diff2<-diff*diff
nm2<-sum(diff2)/n
nm3<-sum(diff*diff2)/n
nm4<-sum(diff2*diff2)/n
beta1<-nm3*nm3/(nm2*nm2*nm2)
beta2<-nm4/(nm2*nm2)
#
points(beta1,beta2,pch=19)
#
dev.copy2eps(file="fig07x009.eps")
dev.copy2pdf(file="fig07x009.pdf")
}

