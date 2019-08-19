fig03x012<-function(){
names<-c("Epidermals","Dust Mites","Weeds","Grasses","Molds","Trees")
prevs<-c(38.2,37.8,31.1,31.1,29.3,26.7)
se<-c(3.2,3.2,3.1,3.1,3.0,2.9)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.8,1.0,0.0,0.125))
#
barplot(prevs,space=0.5,names.arg=NULL,
horiz=TRUE,axes=FALSE,xlim=c(0,50),
xlab="Percent",col=1)
#
yy<-1.5*(1:length(prevs)-0.33)
#
for (i in 1:6) lines(x=c(prevs[i],prevs[i]+se[i]),y=rep(yy[i],2))
axis(1,tick=TRUE,xaxp=c(0,50,5))
yyy<-1.5*(1:length(prevs)-.5)
#
axis(2,at=yyy+0.1,labels=names,font=1,
tck=0,tcl=0,las=1,padj=0,col=0)
#
dev.copy2eps(file="fig03x012.eps")
dev.copy2pdf(file="fig03x012.pdf")
}

