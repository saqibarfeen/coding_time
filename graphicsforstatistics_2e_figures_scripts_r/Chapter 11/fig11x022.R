fig11x022<-function(){
#
require(car)
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
#
graphics.off()
windows(width=4.5,height=6.5,pointsize=12)
par(fin=c(4.45,6.45),pin=c(4.45,6.45),
mai=c(1.25,1.25,0.25,0.25),xaxs="r",yaxs="r")
#
influencePlot(molm,xlim=c(-0.01,0.06),
ylim=c(-4,4),id=FALSE)
#
dev.copy2eps(file="fig11x022.eps")
dev.copy2pdf(file="fig11x022.pdf")
}

