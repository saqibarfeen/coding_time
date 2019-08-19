fig04x014<-function(){
#
require(aplpack)
#
width<-c(16.0,13.6,15.2,15.3,15.9,17.3,16.1,15.1,14.6,13.2,
15.8,14.7,16.3,15.5,14.5,15.0,15.0,15.0,17.0,15.1,15.1,15.0,
14.8,14.9,14.6,15.0,15.9,13.9,15.7,14.8,17.9,15.0,15.0,15.8,
14.3,15.4,15.1,17.7,17.5,20.9,17.6,17.6,15.9,16.2,18.1,14.5,
17.8,16.8,17.0,17.6,15.6,15.4,16.1,16.3,17.7,16.3)
#
graphics.off()
windows(width=4.5,height=6.0,pointsize=9)
par(fin=c(4.45,5.95),pin=c(4.45,5.95),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n",family="mono")
#
plot.new()
sink("fig04x014.txt")
stem.leaf(width,m=5,Max=max(width))
sink()
zz<-readLines("fig04x014.txt")
zz<-paste(zz," ")
text(rep(0,length(zz)),sort(1:length(zz),
decreasing=TRUE)/(length(zz)),zz,pos=4,font=1,offset=0)
#
dev.copy2eps(file="fig04x014.eps",fonts="mono",family="mono")
dev.copy2pdf(file="fig04x014.pdf")
}

