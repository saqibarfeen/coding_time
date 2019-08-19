fig02x001<-function(){
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
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.5,0.0,0.25),xaxs="i")
#
dotchart(x=amount,labels=item,lcolor="black",
col="black",bg="black",xlim=c(0,800),
xlab="Millions of US Dollars")
#
dev.copy2eps(file="fig02x001.eps")
dev.copy2pdf(file="fig02x001.pdf")
}