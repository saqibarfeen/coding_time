fig11x020<-function(){
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
dfbeta0<-dfbetas(molm)[,1]
dfbeta1<-dfbetas(molm)[,2]
#
graphics.off()
windows(width=4.5,height=6.6,pointsize=12)
par(fin=c(4.45,3.25),pin=c(4.45,3.25),mfrow=c(2,1),
mai=c(1.25,1.25,0.25,0.25),xaxs="r",yaxs="r")
#
plot(MidParent,dfbeta0,xlab="Mid-Parent Height (inch)",
ylab="Intercept DFBETAS",xlim=c(60,75),
ylim=c(-0.4,0.4),cex=0.5)
#
abline(c(sqrt(2/length(MidParent)),0),lty=2)
abline(-c(sqrt(2/length(MidParent)),0),lty=2)
#
text(67.25,0.325,"High Leverage")
text(67.25,-0.325,"High Leverage")
#
plot(MidParent,dfbeta1,xlab="Mid-Parent Height (inch)",
ylab="Slope DFBETAS",xlim=c(60,75),ylim=c(-0.4,0.4),
cex=0.5)
#
abline(c(sqrt(2/length(MidParent)),0),lty=2)
abline(-c(sqrt(2/length(MidParent)),0),lty=2)
#
text(67.25,0.325,"High Leverage")
text(67.25,-0.325,"High Leverage")
#
dev.copy2eps(file="fig11x020.eps")
dev.copy2pdf(file="fig11x020.pdf")
}
fig11x020()
