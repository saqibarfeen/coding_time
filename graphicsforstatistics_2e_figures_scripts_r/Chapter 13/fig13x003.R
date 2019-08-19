fig13x003<-function(){
#
require(lattice)
#
# Requires dataset Titanic in 
# the R package datasets
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25),
mai=rep(0,4),xaxs="r",yaxs="r")
#
par.set<-list(plot.line=list(col=gray(0)),
plot.symbol=list(col=gray(0),cex=2.0),
strip.background=list(col=gray(c(0.9,1))),
box.3d=list(col=gray(.7)))
#
figure<-cloud(prop.table(Titanic, margin = 1:3),
layout=c(1,2,1),par.settings=par.set,type=c("p","h"),
strip=strip.custom(strip.names=TRUE),
scales=list(arrows=FALSE,distance=2),
panel.aspect = 0.7,zlab = "Prop.")[,2]
#
print(figure)
#
dev.copy2eps(file="fig13x003.eps")
dev.copy2pdf(file="fig13x003.pdf")
}

