fig13x004<-function(){
#
require(RColorBrewer)
#
# Requires dataset iris3 from R datasets package
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
colpal<-rev(brewer.pal(3,"Dark2"))
#
plot(iris3[,,1][,3],iris3[,,1][,4],cex=0.8,
pch=2,col=colpal[1],
xlim=c(0,7),ylim=c(0,3),xlab="Petal Length (cm)",
ylab="Petal Width (cm)")
#
points(iris3[,,2][,3],iris3[,,2][,4],pch=0,
col=colpal[2],cex=0.8)
#
points(iris3[,,3][,3],iris3[,,3][,4],pch=1,
col=colpal[3],cex=0.8)
#
legend(x=-0.15,y=3.06,
legend=c("setosa","versicolor","virginica"),
horiz=TRUE,pch=c(2,0,1),
col=colpal,pt.cex=0.8)
#
dev.copy2eps(file="fig13x004.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x004.pdf",colormodel="cmyk")
}
