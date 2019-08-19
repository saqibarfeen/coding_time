fig11x001<-function(){
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=5.0,pointsize=12)
layout(matrix(c(1,2),2,1,byrow=TRUE),
widths=rep(4.45,4.45),heights=c(4.45,0.5))
#plot.new()
#
par(mai=c(0.85,0.85,0.25,0.25))
#
qqnorm(Galton$Father-Galton$Mother,
datax=TRUE,main=" ",
xlab="Standard Normal Quantiles",
ylab="Husband's Height - Wife's Height (inch)",
ylim=c(-5,20),cex=0.5)
#
qqline(Galton$Father-Galton$Mother,datax=TRUE)
#
par(mai=c(0.0,0.85,0.0,0.25))
#
qqnorm(Galton$Father-Galton$Mother,datax=TRUE,
main=" ",pch=" ", axes=FALSE,ylab=" ",xlab=" ",
ylim=c(-5,20))
#
boxplot(Galton$Father-Galton$Mother,
horizontal=TRUE,xlim=c(-5,20),add=TRUE,
axes=FALSE,boxwex=6,cex=0.5)
#
dev.copy2eps(file="fig11x001.eps")
dev.copy2pdf(file="fig11x001.pdf")
}


