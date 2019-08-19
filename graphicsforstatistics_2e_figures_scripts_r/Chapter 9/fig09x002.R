fig09x002<-function(){
#
# Requires textbook R data set Fishcatch.RData 
# which contains the list Fishcatch
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45)
,mai=c(0.85,1.25,0.25,0.25),xaxs="r")
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(1,6,2,7,3,4,5),
labels=c("Bream","Pike","Ide","Perch",
"Roach","Silver Bream","Smelt"))
#
meds<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=median,na.rm=TRUE)
meds<-sort(meds,decreasing=TRUE)
#
set.seed(475)
#
stripchart(fc$Weight ~ fc$Species,pch=21,
method="jitter",xlim=c(0,2000),xlab="Mass (g)",
group.names=rep(" ",7),vertical=FALSE)
#
for (i in 1:7) lines(c(meds[i],meds[i]),c(i-.25,i+0.25))
#
axis(2,at=1:7,labels=levels(fc$Species),las=1)
#
dev.copy2eps(file="fig09x002.eps")
dev.copy2pdf(file="fig09x002.pdf")
}

