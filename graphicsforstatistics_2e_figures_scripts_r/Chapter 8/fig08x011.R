fig08x011<-function(){
#
require(lattice)
#
haireye<-matrix(data=c(7,10,16,94,26,14,14,17,119,54,29,84,68,15,5,20),
nrow=4,ncol=4,byrow=TRUE,dimnames=list(c("Blond","Red","Brunette","Black"),
c("Brown","Hazel","Green","Blue")))
#
trellis.device(color=FALSE)
graphics.off()
windows(width=4.5,height=3.5,pointsize=12)
par(fin=c(4.45,3.45),pin=c(4.45,3.45),
mai=c(0.85,0.85,0.25,0.25))
#
trellis.par.set("color",FALSE)
#
figure <- dotplot(haireye,xlab="Frequency",
ylab="Hair Color",col.line="gray",lty="dotted",
lwd=1,as.table=FALSE,auto.key=TRUE)
#
print(figure)
#
dev.copy2eps(file="fig08x011.eps")
dev.copy2pdf(file="fig08x011.pdf")
}
