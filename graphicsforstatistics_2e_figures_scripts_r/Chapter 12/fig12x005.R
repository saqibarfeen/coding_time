fig12x005<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Length2_2<-Perch$Length2*Perch$Length2
Perch$Length2_3<-Perch$Length2*Perch$Length2_2
#
plm<-lm(Weight ~ Length2 + Length2_2 + Length2_3,
data=Perch)
coefs<-coef(plm)
res<-residuals(plm)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",yaxs="r")
#
plot(Perch$Length2,Perch$Weight,
xlab="Length from Nose to Notch of Tail (cm)",
ylab="Mass (g)",xlim=c(0,50),ylim=c(0,1200),
las=1,cex=0.5)
#
curve(coefs[1] + coefs[2]*x + coefs[3]*x^2 + 
coefs[4]*x^3,add=TRUE,from=0)
#
dev.copy2eps(file="fig12x005.eps")
dev.copy2pdf(file="fig12x005.pdf")
}

