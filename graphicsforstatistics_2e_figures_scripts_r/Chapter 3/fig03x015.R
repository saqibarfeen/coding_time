fig03x015<-function(){
names<-c("Epidermals","Dust Mites","Weeds","Grasses","Molds","Trees")
prevs<-c(38.2,37.8,31.1,31.1,29.3,26.7)
se<-c(3.2,3.2,3.1,3.1,3.0,2.9)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.875,0.0,0.125,0.25),xaxs="i")
#
dotchart(prevs,labels=names,lcolor="white",
col="black",bg="black",xlim=c(0,50),xlab="Percent")
#
yy<-1:length(prevs)
#
for (i in 1:6) {
lines(x=c(prevs[i]-se[i],prevs[i]+se[i]),y=rep(yy[i],2))
lines(x=rep(prevs[i]-se[i],2),y=c(yy[i]+0.15/2,yy[i]-0.15/2))
lines(x=rep(prevs[i]+se[i],2),y=c(yy[i]+0.15/2,yy[i]-0.15/2))
}
#
dev.copy2eps(file="fig03x015.eps")
dev.copy2pdf(file="fig03x015.pdf")
}
