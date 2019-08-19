fig11x004<-function(){
#
require(car)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
MidParent<-NULL
Offspring<-NULL
#
n<-length(Galton$Father)
#
for (i in 1:n) {
    OS<-c(60+c(Galton$S1[i],Galton$S2[i],
          Galton$S3[i],Galton$S4[i],Galton$S5[i],
          Galton$S6[i],Galton$S7[i],Galton$S8[i],
          Galton$S9[i],Galton$S10[i]),
          1.08*(60+c(Galton$D1[i],Galton$D2[i],
          Galton$D3[i],Galton$D4[i],Galton$D5[i],
          Galton$D6[i],Galton$D7[i],Galton$D8[i],
          Galton$D9[i],Galton$D10[i])))
    for (j in 1:20) {
        if (!is.na(OS[j])) {
           MidParent<-c(MidParent,((60+Galton$Father[i])+
                        1.08*(60+Galton$Mother[i]))/2)
           Offspring<-c(Offspring,OS[j])
}
}
}
#
graphics.off()
windows(width=4.5,height=6.8,pointsize=12)
par(fin=c(4.45,6.7),pin=c(4.45,6.75),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
set.seed(345)
#
sunflowerplot(MidParent,Offspring,
xlab="Mid-Parent Height (inch)",
ylab="Offspring Height (inch)",xlim=c(62.5,77.5),
ylim=c(55,80),pch=21,seg.col="black",cex=0.5,cex.fact=1,
seg.lwd=1.,size=1/16,rotate=TRUE)
#
dataEllipse(MidParent,Offspring,add=TRUE,
center.cex=0.,col="black",lwd=1.0,
levels=0.95,plot.points=FALSE)
#
dev.copy2eps(file="fig11x004.eps")
dev.copy2pdf(file="fig11x004.pdf")
}

