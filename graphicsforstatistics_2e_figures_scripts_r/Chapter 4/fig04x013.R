fig04x013<-function(){
#
require(aplpack)
#
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
graphics.off()
windows(width=4.5,height=4.0,pointsize=9)
par(fin=c(4.5,3.95),pin=c(4.45,3.95),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n",family="mono")
#
plot.new()
sink("fig04x013.txt")
stem.leaf(mass,m=2,Min=100,Max=1000)
sink()
zz<-readLines("fig04x013.txt")
zz<-paste(zz," ")
text(rep(0,length(zz)),sort(1:length(zz),
decreasing=TRUE)/(length(zz)),zz,pos=4,font=1,offset=0)
#
dev.copy2eps(file="fig04x013.eps",fonts="mono",family="mono")
dev.copy2pdf(file="fig04x013.pdf")
}
