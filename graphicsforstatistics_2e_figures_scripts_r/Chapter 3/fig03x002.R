fig03x002<-function(){
item<-c("Overall coordination",
"Political affairs",
"International law",
"International cooperation",
"Regional cooperation",
"Human rights",
"Public information",
"Management",
"Oversight",
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
graphics.off()
windows(width=4.5,height=3.2,pointsize=12)
par(fin=c(4.45,3.15),pin=c(4.45,3.15),
mai=c(0.85,0.25,0.25,0.25))
#
item1<-rev(item)
amount1<-matrix(amount,ncol=1,
nrow=length(amount))
#
colr<-c("royalblue","khaki","lightgreen",
"hotpink","powderblue","black","green",
"orange","lightsteelblue","red","violet",
"yellow","aquamarine","brown")
#
barplot(height=amount1,space=c(0,6),horiz=TRUE,
axes=FALSE,beside=FALSE,width=rep(0.75,14),
ylim=c(0,4),legend.text=FALSE,col=colr,
xlim=c(0,4500),xlab="Millions of US Dollars")
#
axis(1,at=(0:9)*500,labels=c("0","","1000","",
"2000","","3000","","4000",""))
#
legend(x="topleft",legend=item[1:7],
fill=colr[1:7],y.intersp=0.8,bty="n")
#
legend(x="topright",legend=item[8:14],
fill=colr[8:14],y.intersp=0.8,bty="n")
#
dev.copy2eps(file="fig03x002.eps",colormodel="cmyk")
dev.copy2pdf(file="fig03x002.pdf",colormodel="cmyk")
}