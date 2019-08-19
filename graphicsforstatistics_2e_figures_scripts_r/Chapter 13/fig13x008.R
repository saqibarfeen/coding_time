fig13x008<-function(){
#
require(ggplot2)
require(GGally)
#
require(RColorBrewer)
#
# Requires dataset iris from the R package datasets
#
graphics.off()
windows(width=4.5,height=6.3)
#
colpal<-rev(brewer.pal(3,"Dark2"))
#
figure<-ggpairs(iris,aes(color=Species),
axisLabels="none",
columns=1:4,legend=c(1,1),
diag=list(continuous="densityDiag"),
upper=list(continuous="points",combo="blank"),
lower=list(continuous="blank",combo="blank")) +
theme(legend.position="bottom")
#
for(i in 1:figure$nrow) {
  for(j in 1:figure$ncol){
    figure[i,j] <- figure[i,j] + 
        scale_fill_manual(values=colpal) +
        scale_color_manual(values=colpal)  
  }
}
#
print(figure)
#
dev.copy2eps(file="fig13x008.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x008.pdf",colormodel="cmyk")
}

