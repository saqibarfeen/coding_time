figaax012<-function(){
#
require(RColorBrewer)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),mar=c(5.1,4.1,4.1,2.1))

display.brewer.all(type="qual",colorblindFriendly=TRUE)

dev.copy2eps(file="figaax012.eps",pointsize=10,colormodel="cmyk")
dev.copy2pdf(file="figaax012.pdf",pointsize=10,out.type="pdf",colormodel="cmyk")
}
