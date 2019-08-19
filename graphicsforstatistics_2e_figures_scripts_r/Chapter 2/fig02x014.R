fig02x014<-function(){
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
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
#
category<-rep(item[1],round(amount[1]))
for (i in 2:length(item))category<-c(category,rep(item[i],round(amount[i])))
un_fiscal2<-data.frame(category)
#
figure<-ggplot(un_fiscal2,aes(category))+theme_classic()
#
figure<-figure+geom_bar(fill="white",color="black",width=0.7)
#
figure<-figure+theme(
axis.title.x = element_text(size = unit(12,"pt")),
axis.ticks.y = element_blank(),
plot.margin = unit(c(1,5,3,1), "mm"),
axis.line.y = element_line(color="white"),
axis.line.x = element_line(color="black"),
axis.ticks.x = element_line(color="black"),
axis.text.y = element_text(color="black",
size = unit(12,"pt")),
axis.text.x = element_text(color="black",
size = unit(12,"pt")))+
scale_x_discrete(limits=item[length(item):1])+
scale_y_continuous(expand=c(0,0),
breaks=200*(0:5),limits=c(-5,800))
figure<-figure+coord_flip()+
labs(x=NULL,y="Millions of US Dollars")
#
print(figure)
#
dev.copy2eps(file="fig02x014.eps")
dev.copy2pdf(file="fig02x014.pdf")
}
