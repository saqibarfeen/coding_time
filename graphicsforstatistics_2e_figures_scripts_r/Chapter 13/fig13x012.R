fig13x012<-function(){
#
require(aplpack)
require(LSD)
#
# Requires textbook R data set OECDHealth2004.RData 
# which contains dataframe OECDHealth2004
#
graphics.off()
windows(width=4.5,height=5.8,pointsize=10)
par(fin=c(4.45,5.7),pin=c(4.45,5.75),
mai=c(0.,0.,0.,0.),xaxs="r",yaxs="r")
#
a<-unlist(OECDHealth2004[1],use.names=FALSE)
b<-unlist(names(OECDHealth2004[2:11]),use.names=FALSE)
OECD<-matrix(unlist(OECDHealth2004,use.names=FALSE)[16:165],
nrow=15,ncol=10,dimnames=list(a,b))
#
# Daltonizing the default values for the function faces
# for individuals with protanopic color deficiencies
#
numcolors<-20
col_nose<-daltonize(rainbow(numcolors),cvd="p",
show=FALSE)[[2]]
col_eyes<-daltonize(rainbow(numcolors,start=0.6,end=0.85),
cvd="p",show=FALSE)[[2]]
col_hair<-daltonize(terrain.colors(numcolors),cvd="p",
show=FALSE)[[2]]
col_face<-daltonize(heat.colors(numcolors),cvd="p",
show=FALSE)[[2]]
col_lips<-daltonize(rainbow(numcolors,start=0,end=0.2),
cvd="p",show=FALSE)[[2]]
col_ears<-daltonize(rainbow(numcolors,start=0,end=0.2),
cvd="p",show=FALSE)[[2]]
#
faces(OECD[,1:10],nrow.plot=5,ncol.plot=3,face.type=1,
ncolors=numcolors,col.nose=col_nose,col.eyes=col_eyes, 
col.hair=col_hair,col.face=col_face,col.lips=col_lips, 
col.ears=col_ears)
#
dev.copy2eps(file="fig13x012.eps",colormodel="cmyk")
dev.copy2pdf(file="fig13x012.pdf",colormodel="cmyk")
}

