fig08x006<-function(){
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="i")
#
haireye<-matrix(data=c(20,84,17,94,5,29,14,16,15,
54,14,10,68,119,26,7),
nrow=4,ncol=4,byrow=TRUE,
dimnames=list(c("Blue","Green","Hazel","Brown"),
c("Black","Brunette","Red","Blond")))
#
haireye<-haireye/sum(haireye)
#
dotchart(haireye,xlab="Relative Frequency",
pch=19,lcolor="white",xlim=c(0,0.25))
#
he<-c(94,16,10,7,17,14,14,26,84,29,54,119,20,5,15,68)
nhe<-length(he)
hesum<-sum(he)
he<-he/sum(he)
sd<-sqrt((1.-he)*he/hesum)
hlo<-he-sd
hhi<-he+sd
sd2<-sd*qnorm(0.975)
hlo2<-he-sd2
hhi2<-he+sd2
#
ii<- -2
for (i in 1:nhe) {
ii<- ii + ifelse ((i %% 4) == 1,3,1) 
lines(c(hlo2[i],hhi2[i]),c(ii,ii))
lines(c(hlo[i],hlo[i]),c(ii-0.2,ii+0.2))
lines(c(hhi[i],hhi[i]),c(ii-0.2,ii+0.2))
}
#
dev.copy2eps(file="fig08x006.eps")
dev.copy2pdf(file="fig08x006.pdf")
}

