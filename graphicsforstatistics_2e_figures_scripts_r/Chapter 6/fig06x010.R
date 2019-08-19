fig06x010<-function(){
#
# Histogram of births in Sweden in 2004
#
births<-c(7807,7483,8448,8799,8745,8088,8317,8274,8038,8058,6898,6860)
months<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov",
"Dec")
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.85,0.25,0.25),xaxs="r",bty="n",las=2)
#
barplot(births,space=0,names.arg=months,
col="white",ylim=c(0,10000),
ylab="Births in Sweden",xlab="Month in 2004")
#
dev.copy2eps(file="fig06x010.eps")
dev.copy2pdf(file="fig06x010.pdf")
}
