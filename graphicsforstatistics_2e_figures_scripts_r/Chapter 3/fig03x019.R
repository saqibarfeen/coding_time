fig03x019<-function(){
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
y1<-1:length(item)
item1<-item[order(amount,decreasing=TRUE)]
amount1<-sort(amount,decreasing=TRUE)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.875,2.0,0.0,0.25))
#
plot(amount1,y1,type="n",xaxt="n",yaxt="n",
xlim=c(0,800/1.04),ylim=c(0,length(item1)+1),
xlab='Millions of US Dollars',ylab='',xaxs="r",yaxs="i")
#
for (i in 1:14) lines(x=c(0,amount1[i]),y=c(i,i),lty=3)
points(x=amount1,y=1:14,pch=19,cex=1.0)
#
axis(1,at=200*(0:4),labels=TRUE,tick=TRUE,
outer=FALSE)
axis(2,at=1:14+0.25,labels=item1,tick=FALSE,
outer=FALSE,las=2,hadj=1,padj=1)
#
dev.copy2eps(file="fig03x019.eps")
dev.copy2pdf(file="fig03x019.pdf")
}

