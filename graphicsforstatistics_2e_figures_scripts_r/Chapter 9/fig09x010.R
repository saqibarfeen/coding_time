fig09x010<-function(){
graphics.off()
windows(width=2.0,height=3.0,pointsize=9)
par(fin=c(1.95,2.95),pin=c(4.45,2.95),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n",
family="mono")
plot.new()
#
zz<-c(" ",
"1 | 2: represents 120",
"leaf unit: 10",
" ",
"    Bream     Silver Bream",
" ",
"        |  0  | 569",
"        |  1  | 24457",
"     94 |  2  | 07",
"    964 |  3  | 0",
"   7553 |  4  |",
"  70000 |  5  |",
"8852100 |  6  |",
" 221000 |  7  |",
"      5 |  8  |",
"  75522 |  9  |",
"      0 | 10  |")
#
text(rep(0,length(zz)),sort(1:length(zz),
decreasing=TRUE)/(length(zz)),zz,pos=4,font=1,offset=0)
#
dev.copy2eps(file="fig09x010.eps",fonts="mono",family="mono")
dev.copy2pdf(file="fig09x010.pdf")
}

