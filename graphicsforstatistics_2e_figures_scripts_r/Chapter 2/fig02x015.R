fig02x015<-function(){
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
item<-item[length(item):1]
amount<-amount[length(amount):1]
#
colr<-c("royalblue","khaki","lightgreen",
"hotpink","powderblue","black","green",
"orange","lightsteelblue","red","violet",
"yellow","aquamarine","brown")
#
colr<-colr[length(item):1]
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,2.1,0.0,0.25))
#
barplot(amount,space=0.5,names.arg=NULL,
horiz=TRUE,axes=FALSE,xlim=c(0,800),
xlab="Millions of US Dollars",col=colr)
#
yy<-1.5*(1:length(amount)-0.33)
#
axis(1,tick=TRUE,yaxp=c(0,800,200))
#
yy<-1.5*(1:length(amount)-.375)
#
axis(2,at=yy+0.2,labels=item,tck=0,tcl=0,col=0,
las=2,hadj=0,outer=TRUE,line=-2)
#
dev.copy2eps(file="fig02x015.eps",colormodel="cmyk")
dev.copy2pdf(file="fig02x015.pdf",colormodel="cmyk")
}
