fig13x017<-function(){
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
influencePlot(lmlog,ylim=c(-4,4),xlim=c(0,0.35),id=FALSE)
#
text(x=.27,y=-3.1,labels="FISH #104")
#
dev.copy2eps(file="fig13x017.eps")
dev.copy2pdf(file="fig13x017.pdf")
}

