fig02x023<-function(){
item<-c("Overall coordination",
"Political affairs",
"International law",
"International cooperation",
"Regional cooperation",
"Human rights",
"Public information",
"Management",
"Internal oversight",
"Administrative",
"Capital",
"Safety & security",
"Development",
"Staff assessment")
#
amount<-c(718555600,626069600,87269400,398449400,
477145600,259227500,184000500,540204300,35997700,
108470900,58782600,197169300,18651300,461366000)
amount<-amount/1000000
#
#item<-item[length(item):1]
#amount<-amount[length(amount):1]
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),mai=c(2.0,1.0,0.15,0.0))
#
barplot(amount,space=0.5,names.arg=NULL,
horiz=FALSE,axes=FALSE,ylim=c(0,800),
xaxs="r",col="gray", border=NA)
#
yy<-1.5*(1:length(amount)-.375)
#
lines(c(0.5,20.95),c(0,0),lwd=2,col="gray")
#
for (i in 1:3) abline(a=200*i,b=0,lwd=2,
col="white")
text(x=yy-0.2,y=-50,labels=item,offset=0,
srt=45,
adj=c(1.0,1.0),xpd=TRUE)
axis(2,tick=FALSE,at=(0:3)*200,
labels=c("0","US$200k","US$400k","US$600k"),
las=2)
#
dev.copy2eps(file="fig02x023.eps")
dev.copy2pdf(file="fig02x023.pdf")
}