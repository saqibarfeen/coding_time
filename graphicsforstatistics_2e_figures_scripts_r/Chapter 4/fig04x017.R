fig04x017<-function(){
#
require(ggplot2)
require(ggthemes)
#
width<-c(16.0,13.6,15.2,15.3,15.9,17.3,16.1,15.1,14.6,13.2,
15.8,14.7,16.3,15.5,14.5,15.0,15.0,15.0,17.0,15.1,15.1,15.0,
14.8,14.9,14.6,15.0,15.9,13.9,15.7,14.8,17.9,15.0,15.0,15.8,
14.3,15.4,15.1,17.7,17.5,20.9,17.6,17.6,15.9,16.2,18.1,14.5,
17.8,16.8,17.0,17.6,15.6,15.4,16.1,16.3,17.7,16.3)
#
perch<-data.frame(width=width)
#
graphics.off()
windows(width=4.5,height=1.5,pointsize=12)
#
figure <- ggplot(perch, aes(1,width)) + 
geom_boxplot(color="black") + theme_linedraw() +
theme(panel.border = element_rect(fill=NULL,
color="white",linetype="solid"),
axis.title.y = element_blank(),
axis.text.y = element_blank(),
axis.ticks.y = element_blank(),
axis.line.x = element_line(),
panel.grid = element_blank()) +
scale_y_continuous(expand=c(0,0),
breaks=5+5*(1:4),limits=c(10,25)) +
ylab("Width (%)") + coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig04x017.eps")
dev.copy2pdf(file="fig04x017.pdf")
}

