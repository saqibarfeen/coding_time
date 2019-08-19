fig10x008<-function(){
#
require(car)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
MF<-matrix(0,nrow=18,ncol=14,dimnames=list(c("61.5","62.5",
"63.5","64.5","65.5","66.5","67.5","68.5","69.5","70.5","71.5",
"72.5","73.5","74.5","75.5","76.5","77.5","68.5"),
c("57.5","58.5","59.5","60.5","61.5","62.5","63.5",
"64.5","65.5","66.5","67.5","68.5","69.5","70.5")))
#
for (k in 1:205) {
    for (i in 1:18) {
         for (j in 1:14) {
test<-( (i < Galton$Father[k]) &
(Galton$Father[k] <= (i+1)) & 
((j-4) < Galton$Mother[k]) &
(Galton$Mother[k] <= (j-3)) )
MF[i,j] <- MF[i,j] + ifelse(test,1,0)
}
}
}
#
fa<-rep(0,0)
mo<-fa
cnt<-fa
#
for (i in 1:18) {
    for (j in 1:14) {
    fa<-c(fa,rep(i+60.5,(MF[i,j]>0)))
    mo<-c(mo,rep(j+56.5,(MF[i,j]>0)))
    cnt<-c(cnt,rep(MF[i,j],(MF[i,j]>0)))
}
}
#
cnt<-as.character(cnt)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i")
#
plot(mo,fa,xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)",xlim=c(55,75),
ylim=c(60,80),pch=cnt)
#
dataEllipse(Galton$Mother+60,Galton$Father+60,
add=TRUE,center.cex=0.,col="black",lwd=1.0,
levels=0.95,plot.points=FALSE)
#
dev.copy2eps(file="fig10x008.eps")
dev.copy2pdf(file="fig10x008.pdf")
}

