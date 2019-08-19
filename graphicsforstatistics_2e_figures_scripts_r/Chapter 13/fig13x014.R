fig13x014<-function(){
#
# Requires textbook R data set OECDHealth2004.RData 
# which contains dataframe OECDHealth2004
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25),
mai=c(0.,0.5,0.,0.),xaxs="r",yaxs="r")
#
nations<-unlist(OECDHealth2004[1],use.names=FALSE)
categories<-c("Physicians","Nurses","Medical Grads",
"Nurse Grads","Hospital Beds","Acute Beds","Psych Beds",
"MRI","CT","Expenditure")
#
OECD<-matrix(unlist(OECDHealth2004,use.names=FALSE)[16:165],
nrow=15,ncol=10,dimnames=list(nations,categories))
#
stars(sqrt(OECD %*% diag(1./apply(OECD,2,min)))/3,
scale=FALSE,key.loc=c(6,11.35),cex=0.8,draw.segments=TRUE,
col.segments=gray.colors(10)[10:1],key.xpd=TRUE,xpd=TRUE,
key.labels=categories,flip.labels=FALSE)
#
dev.copy2eps(file="fig13x014.eps")
dev.copy2pdf(file="fig13x014.pdf")
}
