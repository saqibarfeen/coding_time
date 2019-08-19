fig11x014<-function(){
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
n<-length(Galton$Father)
#
MidParent<-rep(0,n)
MidOffspring<-MidParent
#
for (i in 1:n) {
MidParent[i]<-mean(c(60+Galton$Father[i],
                   1.08*(60+Galton$Mother[i])),
              na.rm=TRUE)
MidOffspring[i]<-mean(c(60+c(Galton$S1[i],Galton$S2[i],
                        Galton$S3[i],Galton$S4[i],
                        Galton$S5[i],Galton$S6[i],Galton$S7[i],
                        Galton$S8[i],Galton$S9[i],Galton$S10[i]),
                        1.08*(60+c(Galton$D1[i],Galton$D2[i],
                        Galton$D3[i],Galton$D4[i],Galton$D5[i],
                        Galton$D6[i],Galton$D7[i],Galton$D8[i],
                   Galton$D9[i]))),na.rm=TRUE)
}
#
molm<-lm(MidOffspring ~ MidParent)

rstand<-rstandard(molm)
#
graphics.off()
windows(width=4.5,height=5.0,pointsize=12)
layout(matrix(c(1,2),2,1,byrow=TRUE),
widths=rep(4.45,4.45),heights=c(4.45,0.5))
par(mai=c(0.85,0.85,0.25,0.25))
#
qqnorm(rstand,datax=TRUE,main=" ",cex=0.5,
axes=FALSE,ylim=c(-4,4),xlab=" ",ylab=" ")
#
title(ylab="Standard Normal Quantiles",
xlab="Standardized Residual")
#
axis(1,-4:4)
axis(2,-3:3)
box("plot")
#
qqline(rstand,datax=TRUE)
#
par(mai=c(0.0,0.85,0.0,0.25))
#
qqnorm(rstand,datax=TRUE,main=" ",pch=" ",
axes=FALSE,ylab=" ",xlab=" ",ylim=c(-4,4))
#
boxplot(rstand,horizontal=TRUE,ylim=c(-4,4),
add=TRUE,axes=FALSE,boxwex=6,cex=0.5)
#
dev.copy2eps(file="fig11x014.eps")
dev.copy2pdf(file="fig11x014.pdf")
}

