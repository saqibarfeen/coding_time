fig10x007<-function(){
#
require(aplpack)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i")
#
bagplot(Galton$Mother+60,Galton$Mother+60,
xlab="Wife's Height (inch)",
ylab="Wife's Height (inch)",
xlim=c(55,75),ylim=c(55,75))
#
dev.copy2eps(file="fig10x007.eps",colormodel="cmyk")
dev.copy2pdf(file="fig10x007.pdf",colormodel="cmyk")
}
