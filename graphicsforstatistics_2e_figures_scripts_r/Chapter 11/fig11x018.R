fig11x018<-function(){
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
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(1.25,1.25,0.25,0.25),xaxs="r",yaxs="r")
#
plot(MidParent,hatvalues(molm),xlim=c(60,80),
ylim=c(0,0.06),xlab="Mid-Parent Height (inch)",
ylab="Hat Value",cex=0.5)
#
abline(c(4/length(MidParent),0),lty=2)
#
text(70,0.05,"High Leverage")
text(70,0.0015,"Low Leverage")
#
dev.copy2eps(file="fig11x018.eps")
dev.copy2pdf(file="fig11x018.pdf")
}

