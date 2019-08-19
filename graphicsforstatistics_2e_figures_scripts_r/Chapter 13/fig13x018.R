fig13x018<-function(){
#
require(car)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
Perch$Mass<-Perch$Weight
Perch$Length<-Perch$Length2
Perch$Width<-Perch$Width_pc*Perch$Length3/100
Perch$Height<-Perch$Height_pc*Perch$Length3/100
#
lmlog<-lm(log(Mass) ~ log(Length)+log(Width)+log(Height),
data=Perch)
#
avPlots(lmlog,intercept=TRUE,col="black",id=FALSE,
col.lines="black",lwd=1,grid=FALSE,main="")
#
dev.copy2eps(file="fig13x018.eps")
dev.copy2pdf(file="fig13x018.pdf")
}
