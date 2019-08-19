fig06x002<-function(){
#
require(ggplot2)
require(ggthemes)
#
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
perch<-data.frame(mass=mass)
#
graphics.off()
windows(width=4.5,height=4.5)
#
figure <- ggplot(perch, aes(mass)) +
geom_histogram(breaks=(0:11)*100,closed="right",
color="black",fill="white") +
theme_base() + theme(plot.background =
element_rect(fill = NULL, color = "white",
linetype = "solid"),
panel.border = element_rect(fill=NULL,
color="white",linetype="solid"),
axis.line=element_blank(),
axis.ticks=element_line(lineend="square"),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
scale_y_continuous(expand=c(.0,0),limits=c(-0.5,20.25)) +
scale_x_continuous(expand=c(0.0,0),breaks=200*(0:6),
limits=c(-50,1250)) +
annotate("segment",x=0,xend=1200,y=-.425,yend=-.425,size=.5) +
annotate("segment",x=-45.5,xend=-45.5,y=0,yend=20,size=.5) +
labs(x="Mass (g)",y="Frequency") 
#
print(figure)
#
dev.copy2eps(file="fig06x002.eps")
dev.copy2pdf(file="fig06x002.pdf")
}

