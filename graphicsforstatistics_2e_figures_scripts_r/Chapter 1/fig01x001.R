fig01x001<-function(){
names<-c("Epidermals","Dust Mites","Weeds","Grasses","Molds","Trees")
prevs<-c(38.2,37.8,31.1,31.1,29.3,26.7)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),mai=c(0.875,1.0,0.125,0.25),xaxs="i")
#
plot(prevs,1:6,type="n",xaxt="n",yaxt="n",xlim=c(0,50),ylim=c(0,7),
xlab='Percent',ylab='',xaxs="i",yaxs="i")
#
for (i in 1:6) lines(x=c(0,prevs[i]),y=c(i,i),lty=3)
points(x=prevs,y=1:6,pch=19,cex=1.0)
axis(1,at=10*(0:5),labels=TRUE,tick=TRUE,outer=FALSE)
axis(2,at=1:6+0.1875,labels=names,tick=FALSE,outer=FALSE,las=2,hadj=1,padj=1)
#
dev.copy2eps(file="fig01x001.eps",pointsize=12)
dev.copy2pdf(file="fig01x001.pdf",pointsize=12,out.type="pdf")
}

