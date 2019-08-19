fig09x015<-function(){
#
require(lattice)
#
# Requires textbook R data set Fishcatch.RData
# which contains dataframe Fishcatch
#
trellis.device(color=FALSE)
#
graphics.off()
windows(width=4.5,height=6.8,pointsize=9)
par(fin=c(4.45,6.75),pin=c(4.45,6.75),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n")
plot.new()
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(1,6,2,7,3,4,5),
labels=c("Bream","Pike","Ide","Perch",
"Roach","Silver Bream","Smelt"))
#
figure<-densityplot(~ Weight | Species,data=fc,
xlab="Mass (g)",ylab="Relative Density",layout=c(1,7),
scales=list(y=list(at=(0:3)*0.001,limits=c(0.0,0.003))),
type="density",kernel="gaussian",bw=139.86,na.rm=TRUE,
from=0,to=2000)
#
print(figure)
#
dev.copy2eps(file="fig09x015.eps")
dev.copy2pdf(file="fig09x015.pdf")
}

