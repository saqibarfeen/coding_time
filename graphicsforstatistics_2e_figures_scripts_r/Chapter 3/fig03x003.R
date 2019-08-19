fig03x003<-function(){
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
windows(width=5,height=4,pointsize=12)
#
un_fiscal<-data.frame(item=factor(item,levels=item,
ordered=TRUE),amount=amount)
#
colr<-c("royalblue","khaki","lightgreen",
"hotpink","powderblue","black","green",
"orange","lightsteelblue","red","violet",
"yellow","aquamarine","brown")
#
figure<-ggplot(un_fiscal,
aes(1,amount,fill=factor(item,levels=rev(item),
ordered=TRUE)))+
scale_fill_manual(values=rev(colr))+
theme(axis.ticks.y=element_blank(),
axis.text.y=element_blank(),
legend.title=element_blank(),legend.position="top",)+
guides(fill=guide_legend(ncol=2,byrow=FALSE,reverse=TRUE))+
geom_bar(stat="identity")+coord_flip()+
labs(x=NULL,y="Millions of US Dollars")
#
print(figure)
#
dev.copy2eps(file="fig03x003.eps",colormodel="cmyk")
dev.copy2pdf(file="fig03x003.pdf",colormodel="cmyk")
}