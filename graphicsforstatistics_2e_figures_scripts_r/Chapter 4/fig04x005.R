fig04x005<-function(){
#
require(ggplot2)
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
windows(width=4.5,height=1.0,pointsize=12)
#
figure <- ggplot(perch, aes(x=mass)) + 
geom_dotplot(binwidth=5,dotsize=3) +  
theme(axis.title.y = element_blank(),
axis.text.y = element_blank(),
axis.ticks.y = element_blank(),
panel.grid = element_blank()) +
scale_x_continuous(breaks=200*(0:6),limits=c(0,1200)) +
xlab("Mass (g)") 
#
print(figure)
#
dev.copy2eps(file="fig04x005.eps")
dev.copy2pdf(file="fig04x005.pdf")
}

