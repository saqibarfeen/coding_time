fig08x002<-function(){
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="i")
#
haireye<-matrix(data=c(7,10,16,94,26,14,14,17,119,54,29,84,
68,15,5,20),nrow=4,ncol=4,byrow=TRUE,dimnames=list(c("Blond",
"Red","Brunette","Black"),
c("Brown","Hazel","Green","Blue")))
#
dotchart(haireye,xlab="Frequency",pch=c(23,22,21,19),
lcolor="white",xlim=c(0,125))
#
# Add dotted lines terminating at the dots
#
he<-c(haireye[,4],haireye[,3],haireye[,2],haireye[,1])
dlx<-cbind(rep(0,length(he)),he)
ys<-c(1:4,7:10,13:16,19:22)
dly<-cbind(ys,ys)
ldl<-length(he)
#
for (i in 1:ldl) lines(dlx[i,],dly[i,],lty=3)
#
dev.copy2eps(file="fig08x002.eps")
dev.copy2pdf(file="fig08x002.pdf")
}
