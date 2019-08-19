fig09x009<-function(){
#
# Requires textbook R data set Fishcatch.RData 
# which contains dataframe Fishcatch
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,1.25,0.25,0.25),xaxs="r",xlog=TRUE)
#
fc<-Fishcatch
#
# A mass of 0.0 is recorded for a Roach (Fish #47). This value
# is replaced by the missing value code NA
#
fc$Weight[47]<-NA
#
fc$Species<-ordered(fc$Species,
levels=c(1,6,2,7,3,4,5),
labels=c("Bream","Pike","Ide","Perch",
"Roach","Silver Bream","Smelt"))
#
boxplot(Weight ~ Species,data=fc,xlab="Mass (g)",
horizontal=TRUE,las=1,notch=TRUE,varwidth=TRUE,
log="x")
#
dev.copy2eps(file="fig09x009.eps")
dev.copy2pdf(file="fig09x009.pdf")
}

