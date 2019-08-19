fig04x018<-function(){
width<-c(16.0,13.6,15.2,15.3,15.9,17.3,16.1,15.1,14.6,13.2,
15.8,14.7,16.3,15.5,14.5,15.0,15.0,15.0,17.0,15.1,15.1,15.0,
14.8,14.9,14.6,15.0,15.9,13.9,15.7,14.8,17.9,15.0,15.0,15.8,
14.3,15.4,15.1,17.7,17.5,20.9,17.6,17.6,15.9,16.2,18.1,14.5,
17.8,16.8,17.0,17.6,15.6,15.4,16.1,16.3,17.7,16.3)
#
graphics.off()
windows(width=2.75,height=4.5,pointsize=12)
par(fin=c(2.70,4.45),pin=c(2.70,4.45),
mai=c(0.25,0.80,0.25,0.0),yaxs="r",bty="n")
#
boxplot(width,range=1.5,horizontal=FALSE,
pars=list(boxwex=1.5),ylab="Width (%)",
cex=1.0,ylim=c(10.,25.),yaxp=c(10.,25.,3),
outline=TRUE,xaxt="n",mfg=c(3,1))
#
text(1.3,20.9,"FISH #143")
#
axis(2,c(10.,15.,20.,25))
#
dev.copy2eps(file="fig04x018.eps")
dev.copy2pdf(file="fig04x018.pdf")
}
