fig02x003<-function(){
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
Category<-item
Amount<-amount
un_fiscal<-data.frame(Category,Amount)
#
figure<-ggplot(un_fiscal,aes(Category,Amount))+
geom_pointrange(ymin=0,ymax=Amount)+coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig02x003.eps")
dev.copy2pdf(file="fig02x003.pdf")
}
