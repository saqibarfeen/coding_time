fig13x016<-function(){
#
require(car)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=6.3,pointsize=12)
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
Perch$hat<-hatvalues(lmlog)
yxr<-cbind(log(Perch$Length),log(Perch$Width),
log(Perch$Height),log(Perch$Mass),Perch$hat)
#
scatterplotMatrix(yxr,diagonal="density",
reg.line=lm,spread=FALSE,smoother=loessLine,
var.labels=c("log(l)","log(w)","log(h)","log(m)",
"leverage"),col=gray(0.5),upper.panel=NULL)
#
# Beginning with version 3.0.0 of car, the displayed
# curves added in addition to the the mean-smooth curve
# are the mean smooth plus the square root of the fit 
# to the positive squared residuals and the mean fit
# minus the square root of the smooth of the negative 
# squared residuals. These two additional curves do not
# appear in Figure 13.16 of the second edition which
# used an earlier version of car.
#
dev.copy2eps(file="fig13x016.eps")
dev.copy2pdf(file="fig13x016.pdf")
}

