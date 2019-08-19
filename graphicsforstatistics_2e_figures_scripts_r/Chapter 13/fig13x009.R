fig13x009<-function(){
#
require(lattice)
require(LSD)
#
# Requires dataset iris
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25))
#
colpal<-daltonize(rainbow(50),cvd = "d",show=FALSE)[[2]]
#
figure<-parallelplot(~iris[c(2,1,4,3)] | Species, iris,
col=colpal)
#
print(figure)
#
dev.copy2eps(file="fig13x009.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x009.pdf",colormodel="cmyk")
}
