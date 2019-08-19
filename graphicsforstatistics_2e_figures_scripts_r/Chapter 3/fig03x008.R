fig03x008<-function(){
item<-c("Canada","Mexico","Saudi Arabia",
"Venezuela","Nigeria")
#
amount<-c(2460,1538,1394,1273,1120)
amount<-amount/1000
#
item1<-rev(item)
amount1<-rev(amount)
#
y1<-1.5*(1:length(amount)-.375)+0.1
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.875,1.25,0.0,0.25))
#
plot(amount,y1,type="n",xaxt="n",yaxt="n",xlim=c(0,2.5/1.04),
ylim=c(0,length(item1)+1),
xlab='Millions of Barrels per Day',ylab='',xaxs="r",yaxs="i")
#
for (i in 1:5) lines(x=c(0,amount[i]),y=c(i,i),lty=3)
points(x=amount,y=1:5,pch=19,cex=1.0)
#
axis(1,at=0.5*(0:5),labels=TRUE,tick=TRUE,outer=FALSE)
axis(2,at=1:5+0.15,labels=item,tick=FALSE,outer=FALSE,las=2,hadj=1,padj=1)
#
dev.copy2eps(file="fig03x008.eps")
dev.copy2pdf(file="fig03x008.pdf")
}