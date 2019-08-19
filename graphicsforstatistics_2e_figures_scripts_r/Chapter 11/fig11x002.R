fig11x002<-function(){
#
require(car)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
MidParent<-NULL
Offspring<-NULL
#
n<-length(Galton$Father)
#
for (i in 1:n) {
    OS<-c(60+c(Galton$S1[i],Galton$S2[i],
          Galton$S3[i],Galton$S4[i],Galton$S5[i],
          Galton$S6[i],Galton$S7[i],Galton$S8[i],
          Galton$S9[i],Galton$S10[i]),
          1.08*(60+c(Galton$D1[i],Galton$D2[i],
          Galton$D3[i],Galton$D4[i],Galton$D5[i],
          Galton$D6[i],Galton$D7[i],Galton$D8[i],
          Galton$D9[i],Galton$D10[i])))
    for (j in 1:20) {
        if (!is.na(OS[j])) {
           MidParent<-c(MidParent,
                      ((60+Galton$Father[i])+
                      1.08*(60+Galton$Mother[i]))/2)
           Offspring<-c(Offspring,OS[j])
}
}
}
#
ParOff<-matrix(0,nrow=23,ncol=18,dimnames=list(
c("56.5","57.5","58.5","59.5","60.5","61.5","62.5",
"63.5","64.5","65.5","66.5","67.5","68.5","69.5",
"70.5","71.5","72.5","73.5","74.5","75.5","76.5",
"77.5","78.5"),
c("61.5","62.5","63.5","64.5","65.5",
"66.5","67.5","68.5","69.5","70.5",
"71.5","72.5","73.5","74.5","75.5",
"76.5","77.5","78.5")))
#
n<-length(MidParent)
#
for (k in 1:n) {
    for (i in 1:23) {
         for (j in 1:18) {
test<-( ((i+55) < Offspring[k]) & 
       (Offspring[k] <= (i+56)) & 
       ((j+60) < MidParent[k]) &
        (MidParent[k] <= (j+61)) )
ParOff[i,j] <- ParOff[i,j] + ifelse(test,1,0)
}
}
}
#
mip<-rep(0,0)
off<-rep(0,0)
cnt<-rep(0,0)
for (i in 1:23) {
         for (j in 1:18) {
             mip<-c(mip,rep(j,ParOff[i,j]>0))
             off<-c(off,rep(i,ParOff[i,j]>0))
             cnt<-c(cnt,rep(ParOff[i,j],
                    (ParOff[i,j]>0)))
}
}
#
mip<- mip + 60.5
off<- off + 55.5
cnt<-as.character(cnt)
#
graphics.off()
windows(width=4.5,height=6.8,pointsize=12)
par(fin=c(4.45,6.75),pin=c(4.45,6.75),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
set.seed(345)
#
plot(mip,off,xlab="Mid-Parent Height (inch)",
ylab="Offspring Height (inch)",
xlim=c(62.5,77.5),ylim=c(55,80),pch=" ")
#
text(mip,off,labels=cnt,cex=0.8)
#
dataEllipse(MidParent,Offspring,add=TRUE,
center.cex=0.,col="black",lwd=1.0,levels=0.95,
plot.points=FALSE)
#
dev.copy2eps(file="fig11x002.eps")
dev.copy2pdf(file="fig11x002.pdf")
}

