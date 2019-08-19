fig12x002<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Weight2<-Perch$Weight*Perch$Weight
Perch$Weight3<-Perch$Weight2*Perch$Weight
#
plm<-lm(Length2 ~ Weight + Weight2 + Weight3,data=Perch)
coefs<-coef(plm)
res<-residuals(plm)
#
graphics.off()
windows(width=4.5,height=6.6,pointsize=12)
layout(matrix(c(1,2,3),3,1,byrow=TRUE),
widths=rep(4.45,3),heights=c(3.3,2.8,0.5))
#
par(mai=c(0.85,0.85,0.25,0.25),cex.lab=1.5,
cex.axis=1.5)
#
plot(Perch$Weight,Perch$Length2,
ylab="Length (cm)",xlab="Mass (g)",
ylim=c(0,50),xlim=c(0,1200),las=1)
#
curve(coefs[1] + coefs[2]*x + 
coefs[3]*x^2 + coefs[4]*x^3,add=TRUE)
#
par(mai=c(0.85,0.85,0.0,0.25))
#
qqnorm(res,datax=TRUE,main=" ",ylim=c(-5,5),
ylab="Residual (cm)",xlab="Normal Quantiles")
qqline(res)
#
par(mai=c(0.0,0.85,0.0,0.25))
#
qqnorm(res,datax=TRUE,main=" ",pch=" ",
axes=FALSE,ylab=" ",xlab=" ",ylim=c(-5,5))
boxplot(res,horizontal=TRUE,xlim=c(-5,5),
add=TRUE,axes=FALSE,boxwex=6,cex=1)
#
dev.copy2eps(file="fig12x002.eps")
dev.copy2pdf(file="fig12x002.pdf")
}

