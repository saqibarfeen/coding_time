fig08x015<-function(){
he<-c(94,16,10,7,0,0,17,14,14,26,0,0,84,29,54,119,0,0,20,5,15,68,0)
hesum<-sum(he)
he<-he/hesum
#
helbls<-c("Blue","Green","Hazel","Brown","Blond        "," ",
"Blue","Green","Hazel","Brown","Red           "," ",
"Blue","Green","Hazel","Brown","Brunette   "," ",
"Blue","Green","Hazel","Brown","Black        ")
#
hebrdrs<-c(rep(c(rep("black",4),rep("white",2)),3),
rep("black",4),"white")
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=10)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.9,0.9,0.25,0.25),xaxs="i")
#
barplot(he,xlab=" ",ylab=" ",xlim=c(0,0.25),
horiz=TRUE,beside=TRUE,space=c(0.2,1),
border=hebrdrs,col="white",legend.text=TRUE,
axes=FALSE)
#
nhe<-length(he)
sd<-sqrt((1.-he)*he/hesum)
hlo<-he-sd
hhi<-he+sd
#
ii<- -2
nhem1<-nhe-1
#
for (i in 1:nhem1) {
if (sum((i %% 6) == 1:4) == 1) {
lines(c(hlo[i],hhi[i]),c(i,i)*1.2+0.27)
lines(c(hlo[i],hlo[i]),c(i-0.2,i+0.2)*1.2+0.27)
lines(c(hhi[i],hhi[i]),c(i-0.2,i+0.2)*1.2+0.27)
}
}
#
title(xlab="Relative Frequency",cex.lab=1.2)
#
axis(1,at=(0:5)*0.05,font=2)
#
yy<-1.2*(1:length(helbls)-0)
#
axis(2,at=yy,labels=helbls,font=2,tck=0,tcl=0,
las=1,padj=0,col=0)
#
dev.copy2eps(file="fig08x015.eps")
dev.copy2pdf(file="fig08x015.pdf")
}

