fig11x007<-function(){
#
# Requires dataframe anscombe in the 
# standard R datasets package
# which ought to be already loaded 
# when starting R.
#
labls<-c("I","II","III","IV")
#
ff <- y ~ x
for(i in 1:4) {
  ff[2:3] <- lapply(paste(c("y","x"), i, sep=""), as.name)
  assign(paste("lm.",i,sep=""), lmi <- lm(ff, data= anscombe))
}
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),mfrow=c(2,2),
mar=.1+c(4,4,1,1), oma= c(0,0,2,0))
#
for(i in 1:4) {
  ff[2:3] <- lapply(paste(c("y","x"), i, sep=""), as.name)
  plot(ff,data =anscombe,col="black",pch=21,
       bg ="black",cex = 1.0, xlim=c(3,19),ylim=c(3,13),
       xlab="x",ylab="y")
  abline(get(paste("lm.",i,sep="")), col="black")
  text(5,12,labels=labls[i],cex=1.5)
}
#
dev.copy2eps(file="fig11x007.eps")
dev.copy2pdf(file="fig11x007.pdf")
}

