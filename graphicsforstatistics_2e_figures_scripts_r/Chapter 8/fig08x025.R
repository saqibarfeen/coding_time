fig08x025<-function(){
graphics.off()
windows(width=4.5,height=3.80,pointsize=12)
par(fin=c(4.45,3.75),pin=c(4.45,3.75),
mai=c(0.25,0.25,0.25,0.25),xaxs="i")
#
haireye<-matrix(data=c(20,5,15,68,84,29,
54,119,17,14,14,26,94,16,10,7),
nrow=4,ncol=4,byrow=TRUE,
dimnames=list(c("Black","Brunette","Red","Blond"),
c("Blue","Green","Hazel","Brown")))
haireye<-t(haireye)
#
mosaicplot(haireye,main=" ",las=1,cex=0.75)
#
dev.copy2eps(file="fig08x025.eps")
dev.copy2pdf(file="fig08x025.pdf")
}
