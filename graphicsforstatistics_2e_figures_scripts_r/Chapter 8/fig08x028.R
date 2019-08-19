fig08x028<-function(){
graphics.off()
windows(width=4.5,height=3.8,pointsize=12)
par(fin=c(4.45,3.75),pin=c(4.45,3.75),
mai=c(0.25,0.25,0.25,0.25),xaxs="i")
#
haireye<-matrix(data=c(68,15,5,20,119,54,
29,84,26,14,14,17,7,10,16,94),
nrow=4,ncol=4,byrow=TRUE,
dimnames=list(c("Black","Brunette","Red","Blond"),
c("Brown","Hazel","Green","Blue")))
#
mosaicplot(haireye,main=" ",las=1,cex=0.75,color=TRUE)
#
dev.copy2eps(file="fig08x028.eps")
dev.copy2pdf(file="fig08x028.pdf")
}
