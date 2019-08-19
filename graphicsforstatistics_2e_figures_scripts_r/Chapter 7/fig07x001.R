fig07x001<-function(){
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
set.seed(seed=136073225)
z<-rnorm(500,65,10)
#
hist(z,breaks=(5:20)*5,freq=FALSE,xlim=c(20,100),
xaxt="n",ylim=c(0,0.05),main=NULL,xlab="Normal Deviate",
ylab="Relative Frequency")
#
axis(1,at=(1:5)*20,labels=c("20","40","60","80","100"))
#
curve(dnorm(x,mean=mean(z),sd=sd(z)),add=TRUE,lwd=1.5)
#
dev.copy2eps(file="fig07x001.eps")
dev.copy2pdf(file="fig07x001.pdf")
}
