fig06x015<-function(){
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
figure <- ggplot(perch, aes(mass,y=..density..)) + 
geom_histogram(breaks=(0:11)*100,closed="right",
color="black",fill="white") + 
geom_density(kernel="epanechnikov") +
theme_linedraw() + theme(panel.grid=element_blank(),
panel.border = element_rect(fill=NULL,
color="white",linetype="solid"),
axis.line=element_line(),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
scale_x_continuous(breaks=200*(0:6),
limits=c(0,1200)) +
annotate("segment",x=1200,xend=1200,y=-0.00001,
yend=0.0003,color="white") +
labs(x="Mass (g)",y="Relative Frequency")
#
print(figure)
#
dev.copy2eps(file="fig06x015.eps")
dev.copy2pdf(file="fig06x015.pdf")
}

