fig09x011<-function(){
graphics.off()
windows(width=5.9,height=4.1,pointsize=8)
par(fin=c(5.8,4.0),mai=c(0.0,0.0,0.0,0.0),
xaxs="i",bty="n",family="mono")
plot.new()
#
zz<-c("1 | 2: represents 120",
"leaf unit: 10",
" ",
"    Bream     Pike   Ide  Perch                 Silver  Roach         Smelt",
"                                                Bream",
" ",
" 0 |         |      |    | 034577888           | 569   | 04678       | 00000000111111",
" 1 |         |      |    | 0111222333344557889 | 24457 | 12244566668 |",
" 2 | 49      | 0    | 77 | 125566              | 07    | 079         |",
" 3 | 469     | 0004 | 0  | 002                 | 0     | 9           |",
" 4 | 3557    | 35   |    |                     |       |             |",
" 5 | 00007   | 0146 | 4  | 15                  |       |             |",
" 6 | 0012588 |      |    | 589                 |       |             |",
" 7 | 000122  | 7    |    | 00                  |       |             |",
" 8 | 5       |      | 0  | 2245                |       |             |",
" 9 | 22557   | 5    |    | 00                  |       |             |",
"10 | 0       |      | 0  | 0001                |       |             |",
"11 |         |      |    | 00                  |       |             |",
"12 |         | 5    |    |                     |       |             |",
"13 |         |      |    |                     |       |             |",
"14 |         |      |    |                     |       |             |",
"15 |         | 5    |    |                     |       |             |",
"16 |         | 05   |    |                     |       |             |")
text(x=rep(0,length(zz)),y=(length(zz):1)/(length(zz)+1),zz,pos=4,font=1,offset=0)
#
dev.copy2eps(file="fig09x011.eps",fonts="mono",family="mono")
dev.copy2pdf(file="fig09x011.pdf")
}

