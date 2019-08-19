fig10x017<-function(){
#
require(MASS)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=5.4,pointsize=12)
par(fin=c(4.45,5.35),pin=c(4.45,5.35),
mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i",las=1)
plot.new()
#
bwmf<-c(bandwidth.nrd(Galton$Mother+60),
bandwidth.nrd(Galton$Father+60))
#
kdemf<-kde2d(Galton$Mother+60,Galton$Father+60,
h=bwmf,n=500,lims=c(57,71,61,79))
#
image(kdemf,col=terrain.colors(6),
breaks=(0:6)*0.005,axes=FALSE,
xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)")
#
contour(kdemf,xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)",axes=FALSE,
nlevels=9,labcex=0.6,add=TRUE,drawlabels=FALSE)
#
axis(1,at=57.+0:13)
axis(2,at=(61.+0:17),
labels=c("61"," ","63"," ","65"," ","67"," ",
"69"," ","71"," ","73"," ","75"," ","77"," "))
box("plot")
#
dev.copy2eps(file="fig10x017.eps",colormodel="cmyk")
dev.copy2pdf(file="fig10x017.pdf",colormodel="cmyk")
}

