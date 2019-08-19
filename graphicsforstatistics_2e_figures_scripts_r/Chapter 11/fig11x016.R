fig11x016<-function(){
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
rstud<-rstudent(molm)
#
graphics.off()
windows(width=4.5,height=5.0,pointsize=12)
layout(matrix(c(1,2),2,1,byrow=TRUE),
widths=rep(4.45,4.45),heights=c(4.45,0.5))
#
par(mai=c(0.85,0.85,0.25,0.25))
#
sortud<-sort(rstud)
ord<-qt(ppoints(sortud),df=202)
#
plot(sortud,ord,ylim=c(-4,4),xlim=c(-4,4),
ylab=" ",xlab=" ",cex=0.5)
#
title(ylab="Standard Student's t Quantiles",
xlab="Studentized Residual")
#
axis(1,-4:4)
axis(2,-3:3)
box("plot")
#
par(mai=c(0.0,0.85,0.0,0.25))
#
plot(sortud,ord,ylim=c(-4,4),,xlim=c(-4,4),
ylab=" ",xlab=" ",pch=" ",axes=FALSE)
#
boxplot(rstud,horizontal=TRUE,add=TRUE,
axes=FALSE,boxwex=6,cex=0.5)
#
dev.copy2eps(file="fig11x016.eps")
dev.copy2pdf(file="fig11x016.pdf")
}

