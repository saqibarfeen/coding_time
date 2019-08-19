fig08x013<-function(){
windows(width=4.5,height=4.5,pointsize=10)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.9,0.9,0.25,0.25),xaxs="i")
#

haireye<-c(94,16,10,7,0,0,17,14,14,26,0,0,
84,29,54,119,0,0,20,5,15,68,0)
#
helbls<-c("Blue","Green","Hazel","Brown","Blond        "," ",
"Blue","Green","Hazel","Brown","Red           "," ",
"Blue","Green","Hazel","Brown","Brunette   "," ",
"Blue","Green","Hazel","Brown","Black        ")
#
hebrdrs<-c(rep(c(rep("black",4),
rep("white",2)),3),rep("black",4),"white")
#
heclrs<-c(rep(c(gray.colors(4)[4:1],
gray.colors(2,start=0,end=0)),3),
gray.colors(4)[4:1],gray.colors(1,start=0))
#
barplot(haireye,xlab=" ",ylab=" ",
xlim=c(0,120),horiz=TRUE,beside=TRUE,
space=c(0.2,1),border=hebrdrs,
col=heclrs,legend.text=TRUE,
axes=FALSE)
#
title(xlab="Frequency",cex.lab=1.2)
#
axis(1,at=(0:6)*20,font=2)
#
yy<-1.2*(1:length(helbls)-0)
#
axis(2,at=yy,labels=helbls,font=2,tck=0,tcl=0,las=1,padj=0,col=0)
#
dev.copy2eps(file="fig08x013.eps")
dev.copy2pdf(file="fig08x013.pdf")
}


