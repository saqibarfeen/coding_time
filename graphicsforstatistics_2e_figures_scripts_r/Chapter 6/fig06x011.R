fig06x011<-function(){
#
# Rose diagram of births in Sweden in 2004
#
require(CircStats)
#
births<-c(7807,7483,8448,8799,8745,8088,8317,8274,8038,8058,6898,6860)
months<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov",
"Dec")
months_rad<-2*pi*(1:12)/13
#
for (i in 1:12) { 
if (i==1) bb<-rep(months_rad[1],births[1])  else bb<-c(bb,rep(months_rad[i],births[i]))
}
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.25,0.25,0.25,0.25),xaxs="r",bty="n",las=2)
#
rose.diag(bb,bins=12,shrink=.35)
#
text(0.2*cos(months_rad[1]-0.2),0.2*sin(months_rad[1]-0.2),labels=months[1])
text(0.2*cos(months_rad[2]-0.2),0.2*sin(months_rad[2]-0.2),labels=months[2])
text(0.2*cos(months_rad[3]-0.1),0.2*sin(months_rad[3]-0.1),labels=months[3])
text(0.2*cos(months_rad[4]-0.1),0.2*sin(months_rad[4]-0.1),labels=months[4])
text(0.2*cos(months_rad[5]-0.05),0.2*sin(months_rad[5]-0.05),labels=months[5])
text(0.2*cos(months_rad[6]-0.05),0.2*sin(months_rad[6]-0.05),labels=months[6])
text(0.2*cos(months_rad[7]-0.0),0.2*sin(months_rad[7]-0.0),labels=months[7])
text(0.2*cos(months_rad[8]+0.05),0.2*sin(months_rad[8]+0.05),labels=months[8])
text(0.2*cos(months_rad[9]+0.1),0.2*sin(months_rad[9]+0.1),labels=months[9])
text(0.2*cos(months_rad[10]+0.125),0.2*sin(months_rad[10]+0.125),labels=months[10])
text(0.2*cos(months_rad[11]+0.2),0.2*sin(months_rad[11]+0.2),labels=months[11])
text(0.2*cos(months_rad[12]+0.2),0.2*sin(months_rad[12]+0.2),labels=months[12])
#
box(which="figure")
#
dev.copy2eps(file="fig06x011.eps")
dev.copy2pdf(file="fig06x011.pdf")
}

