fig10x023<-function(){
#
require(MASS)
#
# Requires textbook R data set Galton.RData 
#
MF<-matrix(0,nrow=18,ncol=14,
dimnames=list(c(61.5,62.5,
63.5,64.5,65.5,66.5,67.5,68.5,69.5,70.5,71.5,
72.5,73.5,74.5,75.5,76.5,77.5,78.5),
c(57.5,58.5,59.5,60.5,61.5,62.5,63.5,
64.5,65.5,66.5,67.5,68.5,69.5,70.5)))
#
for (k in 1:205) {
    for (i in 1:18) {
         for (j in 1:14) {
test<-( (i < Galton$Father[k]) &
(Galton$Father[k] <= (i+1)) & 
((j-4) < Galton$Mother[k]) &
(Galton$Mother[k] <= (j-3)) )
MF[i,j] <- MF[i,j] + ifelse(test,1,0)
}
}
}
#
graphics.off()
windows(width=4.5,height=5.4,pointsize=12)
par(fin=c(4.45,5.35),pin=c(4.45,5.35),
mai=c(0.85,0.85,0.25,0.25),xaxs="i",yaxs="i",las=1)
#
plot.new()
#
contour(57.5+0:13,61.5+0:17,
t(MF),xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)",
axes=FALSE,levels=c(1,3,5,7,9))
#
axis(1,at=57.+0:13)
axis(2,at=(61.+0:17),
labels=c("61"," ","63"," ","65"," ","67"," ",
"69"," ","71"," ","73"," ","75"," ","77"," "))
box("plot")
#
dev.copy2eps(file="fig10x023.eps")
dev.copy2pdf(file="fig10x023.pdf")
}


