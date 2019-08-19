fig04x012<-function(){
#
graphics.off()
windows(width=4.5,height=3.0,pointsize=9)
par(fin=c(4.45,2.95),pin=c(4.45,2.95),
mai=c(0.0,0.0,0.0,0.0),xaxs="i",bty="n",family="mono")
#
zz<-c("                                  (#)",
"   0 | 034577888                  (9)",
"   1 | 0111222333344557889       (19)",
"   2 | 125566                     (6)",
"   3 | 002                        (3)",
"   4 |                               ",                               
"   5 | 15                         (2)",
"   6 | 589                        (3)",
"   7 | 00                         (2)",
"   8 | 2245                       (4)",
"   9 | 00                         (2)",
"  10 | 0001                       (4)",
"  11 | 00                         (2)",
"                                 (56, )")
zz<-paste(zz," ")
#
plot.new()                              
text(rep(0,length(zz)),sort(1:length(zz),
decreasing=TRUE)/(length(zz)),zz,pos=4,font=1,offset=0)
text(0.63,1./length(zz),"\\sr",vfont=c("sans serif","plain"))
#
dev.copy2eps(file="fig04x012.eps",fonts="mono",family="mono")
dev.copy2pdf(file="fig04x012.pdf")
}

