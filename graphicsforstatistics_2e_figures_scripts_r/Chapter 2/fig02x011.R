fig02x011<-function(){
#
require(ggplot2)
#
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
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
#
Category<-rep(item[1],round(amount[1]))
for (i in 2:length(item))Category<-c(Category,
rep(item[i],round(amount[i])))
#
figure<-qplot(Category,geom="bar")+coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig02x011.eps")
dev.copy2pdf(file="fig02x011.pdf")
}
