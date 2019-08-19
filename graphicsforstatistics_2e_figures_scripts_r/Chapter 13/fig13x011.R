fig13x011<-function(){
#
require(aplpack)
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
faces(OECD[,1:10],nrow.plot=5,ncol.plot=3,face.type=0)
#
dev.copy2eps(file="fig13x011.eps")
dev.copy2pdf(file="fig13x011.pdf")
}
