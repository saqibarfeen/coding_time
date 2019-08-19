fig10x022<-function(){
#
require(lattice)
require(MASS)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i",las=1)
#
plot.new()
#
bwmf<-c(bandwidth.nrd(Galton$Mother+60),
bandwidth.nrd(Galton$Father+60))
#
kdemf<-kde2d(Galton$Mother+60,Galton$Father+60,
h=bwmf,n=50,lims=c(57,71,61,79))
#
mfd<-expand.grid(x=kdemf$x,y=kdemf$y)
mfd$z<-c(kdemf$z)
#
figure<-wireframe(z ~ x * y,data=mfd,drape=TRUE,
col.regions=terrain.colors(100),
xlab="Wife",ylab="Husband",zlab="Prob.")
#
print(figure)
#
dev.copy2eps(file="fig10x022.eps",colormodel="cmyk")
dev.copy2pdf(file="fig10x022.pdf",colormodel="cmyk")
}

