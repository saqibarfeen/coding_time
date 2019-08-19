fig09x012<-function(){
#
# Requires textbook R data set Fishcatch.RData 
# which contains dataframe Fishcatch
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,1.25,0.25,0.25),xaxs="r")
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(6,1,2,7,4,3,5),
labels=c("Pike","Bream","Ide","Perch",
"Silver Bream","Roach","Smelt"))
#
means<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=mean,na.rm=TRUE)
sds<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=sd,na.rm=TRUE)
#
stripchart(fc$Weight ~ fc$Species,pch=21,
col="white",xlim=c(0,1500),xlab="Mass (g)",
group.names=rep(" ",7),vertical=FALSE)
#
for (i in 1:7) points(means[i],i,pch=19)
for (i in 1:7) lines(c(means[i]-sds[i],means[i]+sds[i]),c(i,i))
for (i in 1:7) lines(rep(means[i]-sds[i],2),c(i-0.125,i+0.125))
for (i in 1:7) lines(rep(means[i]+sds[i],2),c(i-0.125,i+0.125))
#
axis(2,at=1:7,labels=levels(fc$Species),las=1)
dev.copy2eps(file="fig09x012.eps")
dev.copy2pdf(file="fig09x012.pdf")
}

