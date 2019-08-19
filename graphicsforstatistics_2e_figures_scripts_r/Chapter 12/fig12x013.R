fig12x013<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
Perch$Weight2<-Perch$Weight*Perch$Weight
Perch$Weight3<-Perch$Weight2*Perch$Weight
#
plm<-lm(Length2 ~ Weight + Weight2 + 
Weight3,data=Perch)
coefs<-coef(plm)
#
graphics.off()
windows(width=4.5,height=4.5,
pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),
xaxs="r",yaxs="r")
#
plot(Perch$Weight,Perch$Length2,
ylab="Length from Nose to Notch of Tail (cm)",
xlab="Mass (g)",ylim=c(0,50),xlim=c(0,1200),
las=1,cex=0.5)
#
curve(coefs[1] + coefs[2]*x + coefs[3]*x^2 
+ coefs[4]*x^3,add=TRUE,from=min(Perch$Weight),
to=max(Perch$Weight),lty=2)
#
lines(lowess(Perch$Weight,Perch$Length2,delta=0))
#
legend(355,10,
legend=c("LOWESS","Trinomial Regression"),lty=c(1,2))
#
dev.copy2eps(file="fig12x013.eps")
dev.copy2pdf(file="fig12x013.pdf")
}

