fig02x018<-function(){
item<-c("Overall coordination",
"Political affairs",
"Intern'l law",
"Intern'l cooperation",
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
grays1<-gray(((2*length(amount)-1):0)/(2*length(amount)-1))
grays<-grays1[1:length(amount)]
#
graphics.off()
windows(width=4.5,height=3.,pointsize=10)
par(fin=c(4.45,2.9),pin=c(4.45,2.9),mai=c(0.0,0.85,0.0,0.70))
#
pie(amount,labels=item, radius = 0.85, clockwise=TRUE,
col=grays,angle=120)
#
box("outer")
#
dev.copy2eps(file="fig02x018.eps")
dev.copy2pdf(file="fig02x018.pdf")
}
