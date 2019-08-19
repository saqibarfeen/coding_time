fig13x001<-function(){
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,1.25,0.25,0.25),
xaxs="r",yaxs="r")
#
RMSTitanic<-array(
data=c(173,58,144,139,5,5,160,13,
93,78,24,24,454,55,179,98,76,23,
875,189,23,21,0,0),
dim=c(2,3,4),dimnames=list(c("Carried","Survived"),
c("Men","Women","Children"),
c("1st","2nd","3rd","Crew")))
#
SurviveTitanic<-RMSTitanic[2,,]/RMSTitanic[1,,]
#
x<-rep(1:3,4)
y<-c(rep(1,3),rep(2,3),rep(3,3),rep(4,3))
#
symbols(x=x,y=y,thermometers=cbind(rep(1,12),
rep(3,12),c(1-SurviveTitanic)),
inches=0.5,xaxt="n",yaxt="n",bty="n",
xlab=" ",ylab=" ")
#
axis(1,1:3,tick=FALSE,
labels=c("Men","Women","Children"))
axis(2,1:4,tick=FALSE,
labels=c("First Class","Second Class",
"Third Class","Crew"),las=1)
#
dev.copy2eps(file="fig13x001.eps")
dev.copy2pdf(file="fig13x001.pdf")
}
