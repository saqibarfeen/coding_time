fig06x026<-function(){
#
require(lattice)
#
# Example of violin plot
#
width<-c(16.0,13.6,15.2,15.3,15.9,17.3,16.1,15.1,14.6,13.2,
15.8,14.7,16.3,15.5,14.5,15.0,15.0,15.0,17.0,15.1,15.1,15.0,
14.8,14.9,14.6,15.0,15.9,13.9,15.7,14.8,17.9,15.0,15.0,15.8,
14.3,15.4,15.1,17.7,17.5,20.9,17.6,17.6,15.9,16.2,18.1,14.5,
17.8,16.8,17.0,17.6,15.6,15.4,16.1,16.3,17.7,16.3)
#
widthf<-data.frame(width=width,type=rep(" ",length(width)))
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n")
#
trellis.par.set(box.rectangle=list(col="black"),
box.umbrella=list(col="black",lty=1),
plot.symbol=list(pch=" ",col="white",cex=0.8))
#
figure<-bwplot(width~type,widthf,ylab="Width (%)",
xlab=" ",horizontal=FALSE,
scales=list(y=list(limits=c(10,25),at=(2:5)*5,axs="i")),
panel=function(...,box.ratio) {
panel.violin(...,col="transparent",varwidth=FALSE,
box.ratio=box.ratio,
kernel="rectangular")
panel.bwplot(...,fill="black",box.ratio=.025,col="white")
})
#
print(figure)
#
dev.copy2eps(file="fig06x026.eps")
dev.copy2pdf(file="fig06x026.pdf")
}

