fig08x019<-function(){
haireyex<-matrix(data=c(94,16,10,7,NA,17,14,14,26,NA,
84,29,54,119,NA,20,5,15,68,NA),
nrow=4,ncol=5,byrow=TRUE,
dimnames=list(c("Blond","Red","Brunette","Black"),
c("Blue","Green","Hazel","Brown"," ")))
#
haireye<-haireyex[1:4,1:4]
hc<-unlist(dimnames(haireye)[2])
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,.25,0.25),xaxs="i")
#
# The following call plots nothing but gives extra
# room at the top for hair color " " without data
# so that there is room for the legend
#
barplot(haireyex,plot=TRUE,ylab=" ",xlim=c(0,310),
horiz=TRUE,beside=FALSE,col="white",border="white",
legend.text=FALSE,axes=FALSE,names.arg=rep(" ",5))
#
legend(x="top",legend=unlist(dimnames(haireye)[1]),
fill=gray.colors(4)[4:1],horiz=TRUE,x.intersp=0.1,
text.width=49)
#
barplot(haireye,add=TRUE,col=gray.colors(4)[4:1],
horiz=TRUE,axes=FALSE,
legend.tex=FALSE,names.arg=rep(" ",4))
#
title(xlab="Frequency")
#
axis(1,at=(0:6)*50,font=1)
#
yy<-1.2*(1:length(hc)-0.5)
#
axis(2,at=yy,labels=hc,font=1,tck=0,tcl=0,
las=1,padj=0,col=0)
#
dev.copy2eps(file="fig08x019.eps")
dev.copy2pdf(file="fig08x019.pdf")
}

