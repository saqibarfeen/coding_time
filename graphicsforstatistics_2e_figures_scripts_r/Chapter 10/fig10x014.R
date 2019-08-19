fig10x014<-function(){
#
require(hexbin)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
hb<-hexbin(x=Galton$Mother+60,y=Galton$Father+60,
xbnds=c(57,71),ybnds=c(61,79),xbins=14)
#
gplot.hexbin(hb,xlab="Wife's Height (inch)",
ylab="Husband's Height (inch)")
#
dev.copy2eps(file="fig10x014.eps")
dev.copy2pdf(file="fig10x014.pdf")
}
