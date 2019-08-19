fig03x001<-function(){
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
mai=c(0.25,0.25,0.25,0.25))
#
colr<-c("royalblue","khaki","lightgreen",
"hotpink","powderblue","black","green",
"orange","lightsteelblue","red","violet",
"yellow","aquamarine","brown")
#
item1<-rev(item)
amount1<-matrix(rev(amount),ncol=1,
nrow=length(amount))
#
barplot(height=amount1,space=c(0,4),
horiz=FALSE,axes=FALSE,beside=FALSE,
width=rep(0.4,14),xlim=c(0,4),legend.text=FALSE,
col=colr[length(colr):1])
#
legend(x="top",legend=item,fill=colr,y.intersp=0.86)
#
dev.copy2eps(file="fig03x001.eps",colormodel="cmyk")
dev.copy2pdf(file="fig03x001.pdf",colormodel="cmyk")
}

