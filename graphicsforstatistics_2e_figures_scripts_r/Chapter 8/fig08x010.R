fig08x010<-function(){
#
require(lattice)
#
trellis.device(color=FALSE)
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25))
#
haireye<-matrix(data=c(20,84,17,94,5,29,14,16,
15,54,14,10,68,119,26,7),nrow=4,ncol=4,byrow=TRUE,
dimnames=list(c("Blue","Green","Hazel","Brown"),
c("Black","Brunette","Red","Blond")))
#
figure <-dotplot(haireye,xlab="Frequency",
ylab="Eye Color",as.table=TRUE,groups=FALSE,
stack=FALSE,layout=c(1,4),scales=list(alternating=3))
#
print(figure)
#
dev.copy2eps(file="fig08x010.eps")
dev.copy2pdf(file="fig08x010.pdf")
}
