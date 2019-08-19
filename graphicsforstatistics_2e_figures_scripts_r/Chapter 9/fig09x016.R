fig09x016<-function(){
#
require(lattice)
#
# Requires textbook R data set Fishcatch.RData which contains
# dataframe Fishcatch
#
trellis.device(color=FALSE)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=9)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n")
plot.new()
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(rev(c(1,6,2)),rev(c(7,3,4)),5),
labels=c(rev(c("Bream","Pike","Ide")),
rev(c("Perch","Roach","Silver Bream")),"Smelt"))
#
figure<-densityplot(~ Weight | Species,data=fc,
xlab="Mass (g)",ylab="Relative Density",
layout=c(3,3),par.strip.text=list(cex=0.9),
scales=list(y=list(at=(0:3)*0.001,limits=c(0.0,0.003))),
type="density",kernel="gaussian",bw=139.86,na.rm=TRUE,
from=0,to=2000)
#
print(figure)
#
dev.copy2eps(file="fig09x016.eps")
dev.copy2pdf(file="fig09x016.pdf")
}

