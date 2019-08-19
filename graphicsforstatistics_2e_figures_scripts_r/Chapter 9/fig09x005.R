fig09x005<-function(){
#
# Requires textbook R data set Fishcatch.RData which contains
# dataframe Fishcatch
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,1.25,0.25,0.25),xaxs="r")
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(1,6,2,7,3,4,5),
labels=c("Bream","Pike","Ide","Perch",
"Roach","Silver Bream","Smelt"))
#
boxplot(Weight ~ Species,data=fc,
ylim=c(0,2000),xlab="Mass (g)",
horizontal=TRUE,las=1,notch=TRUE)
#
dev.copy2eps(file="fig09x005.eps")
dev.copy2pdf(file="fig09x005.pdf")
}
