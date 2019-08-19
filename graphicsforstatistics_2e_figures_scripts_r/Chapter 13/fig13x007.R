fig13x007<-function(){
#
require(RColorBrewer)
#
# Requires dataset iris from the R package datasets
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25),xpd=TRUE)
#
colpal<-rev(brewer.pal(3,"Dark2"))
#
pairs(iris[c(3,4,1,2)], main = " ",
cex=0.6,pch = c(2,0,1)[unclass(iris$Species)],
col = colpal[unclass(iris$Species)],
labels=c("Petal Length","Petal Width",
"Sepal Length","Sepal Width"),lower.panel=NULL,)
#
legend(x="top",legend=c("setosa","versicolor","virginica"),
cex=0.75,x.intersp=0.5,bty="o",
inset=-0.025,col=colpal,pch=c(2,0,1),
pt.cex=0.5,horiz=TRUE)
#
dev.copy2eps(file="fig13x007.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x007.pdf",colormodel="cmyk")
}
