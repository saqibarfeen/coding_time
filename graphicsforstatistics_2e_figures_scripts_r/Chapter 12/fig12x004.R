fig12x004<-function(){
#
require(car)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Weight2<-Perch$Weight*Perch$Weight
Perch$Weight3<-Perch$Weight2*Perch$Weight
#
plm<-lm(Length2 ~ Weight + Weight2 + Weight3,
data=Perch)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
influencePlot(plm,xlim=c(0,0.35),ylim=c(-5,5),
id=FALSE)
#
dev.copy2eps(file="fig12x004.eps")
dev.copy2pdf(file="fig12x004.pdf")
}

