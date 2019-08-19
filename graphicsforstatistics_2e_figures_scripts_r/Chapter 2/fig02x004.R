fig02x004<-function(){
#
require(ggplot2)
require(ggthemes)
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
item<-item[length(item):1]
amount<-amount[length(amount):1]
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
#
un_fiscal<-data.frame(item,amount)
#
figure<-ggplot(un_fiscal,aes(item,amount))+theme_base()
figure<-figure+theme(plot.background = 
element_rect(fill = NULL, 
colour = "white", linetype = "solid"))
figure<-figure+theme(axis.title.x = 
element_text(size = unit(12,"pt")),
axis.ticks.y = element_blank()
,plot.margin = unit(c(1,5,3,1), "mm"))+
scale_x_discrete(limits=un_fiscal$item)+
scale_y_continuous(expand=c(0,0),
breaks=200*(0:5),limits=c(-20,800))+
geom_pointrange(ymin=0,ymax=amount,linetype=3)+
coord_flip()+labs(x=NULL,y="Millions of US Dollars")
#
print(figure)
#
dev.copy2eps(file="fig02x004.eps")
dev.copy2pdf(file="fig02x004.pdf")
}