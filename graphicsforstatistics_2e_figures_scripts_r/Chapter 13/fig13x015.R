fig13x015<-function(){
#
require(car)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.45,height=6.3,pointsize=12)
par(fin=c(4.45,6.25),pin=c(4.45,6.25),
mai=c(0.,0.0,0.,0.),xaxs="r",yaxs="r")
#
Perch$Mass<-Perch$Weight
Perch$Length<-Perch$Length2
Perch$Width<-Perch$Width_pc*Perch$Length3/100
Perch$Height<-Perch$Height_pc*Perch$Length3/100
#
lmlog<-lm(log(Mass) ~ log(Length)+log(Width)+log(Height),
data=Perch)
#
Perch$res<-residuals(lmlog)
yxr<-cbind(log(Perch$Length),log(Perch$Width),
log(Perch$Height),log(Perch$Mass),Perch$res)
#
scatterplotMatrix(yxr,diagonal="qqplot",
reg.line=lm,spread=FALSE,smoother=loessLine,
var.labels=c("log(l)","log(w)","log(h)","log(m)",
"residuals"),col=gray(0.5),upper.panel=NULL)
#
dev.copy2eps(file="fig13x015.eps")
dev.copy2pdf(file="fig13x015.pdf")
}

