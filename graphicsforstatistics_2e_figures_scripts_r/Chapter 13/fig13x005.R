fig13x005<-function(){
#
require(lattice)
require(RColorBrewer)
#
# Requires dataset iris from R datasets package
# 
graphics.off()
windows(width=4.5,height=3.8,pointsize=12)
par(fin=c(4.45,3.75),pin=c(4.45,3.75))
#
colpal<-rev(brewer.pal(3,"Dark2"))
#
trellis.par.set(list(superpose.symbol=list(pch=c(24,22,21),
                col=colpal)))
#
figure<-cloud(Sepal.Length ~ Petal.Length*Petal.Width,
        groups=Species,data = iris,screen = list(z =20,x=-70,y=3),
        par.settings=list(axis.line=list(col="transparent")),
        key=list(text=list(c("setosa","versicolor","virginica"),
        cex=rep(1,3)),
        space="top",columns=3,between=1,
        points=list(cex=rep(0.5,3),pch=c(2,0,1),col=colpal)),
        cex=0.5,zlab="S L",ylab="P W",xlab="P L",
        clip=list(panel="off"),
        scales=list(arrows=FALSE,distance = 1.2))
#
print(figure)
#
dev.copy2eps(file="fig13x005.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x005.pdf",colormodel="cmyk")
}
