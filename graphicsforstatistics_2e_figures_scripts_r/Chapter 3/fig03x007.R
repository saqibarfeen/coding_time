fig03x007<-function(){
item<-c("Canada","Mexico","Saudi Arabia",
"Venezuela","Nigeria")
#
amount<-c(2460,1538,1394,1273,1120)
amount<-amount/1000
#
item1<-rev(item)
amount1<-rev(amount)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,1.25,0.0,0.25))
#
barplot(amount1,space=0.5,names.arg=NULL,
horiz=TRUE,axes=FALSE,xlim=c(0.,2.5),
xlab="Millions of Barrels per Day",col="white")
#
axis(1,tick=TRUE,xaxp=c(0,2.5,5))
yy<-1.5*(1:length(amount)-.375)+0.1
axis(2,at=yy,labels=item1,tck=0,tcl=0,col=0,
las=2,hadj=0,outer=TRUE,line=-2)
#
dev.copy2eps(file="fig03x007.eps")
dev.copy2pdf(file="fig03x007.pdf")
}