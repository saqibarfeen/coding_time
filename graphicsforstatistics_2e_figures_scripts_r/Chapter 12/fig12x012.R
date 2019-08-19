fig12x012<-function(){
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
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
lines(lowess(Perch$Weight,Perch$Length2,delta=0))
#
uwt<-data.frame(
Weight=unique(sort(Perch$Weight)))
a<-predict(loess(Length2 ~ Weight,Perch),
           newdata=uwt,se=TRUE)
cv<--qt(0.025,df=a$df)
#
lines(uwt$Weight,a$fit,lty=2)
#
legend(355,10,
legend=c("LOWESS","LOESS"),
lty=1:2)
#
dev.copy2eps(file="fig12x012.eps")
dev.copy2pdf(file="fig12x012.pdf")
}

