fig10x015<-function(){
#
require(lattice)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
MF<-matrix(0,nrow=18,ncol=14,dimnames=list(c(61.5,62.5,
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
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=rep(0,4),xaxs="i",yaxs="i",las=1)
#
figure<-cloud(prop.table(MF),type=c("h"),
screen=list(x=-10,y=7,z=10),
xlab="Wife",ylab="Husband",
zlab="   Count",par.box=FALSE,
col="black",lwd=1.5,
scpos=list(x=1,y=8,z=12)) 
#
print(figure)
#
dev.copy2eps(file="fig10x015.eps")
dev.copy2pdf(file="fig10x015.pdf")
}

