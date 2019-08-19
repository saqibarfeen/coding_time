fig10x004<-function(){
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45)
,mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i")
#
set.seed(345)
#
sunflowerplot(Galton$Mother+60,Galton$Father+60,
xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)",xlim=c(55,75),
ylim=c(60,80),pch=19,
seg.col="black",cex=.5,cex.fact=1,seg.lwd=1.,
size=1/16,rotate=TRUE)
#
dev.copy2eps(file="fig10x004.eps")
dev.copy2pdf(file="fig10x004.pdf")
}

