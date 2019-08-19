fig04x023<-function(){
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
windows(width=4.5,height=4.5,pointsize=12)
#
figure <- ggplot(perch, aes(x=mass)) + stat_ecdf() +
theme_linedraw() + theme(panel.grid = element_blank()) +
scale_x_continuous(breaks=200*(0:6),limits=c(0,1200)) +
labs(x="Mass (g)",y="Empirical Distribution Function") 
#
print(figure)
#
dev.copy2eps(file="fig04x023.eps")
dev.copy2pdf(file="fig04x023.pdf")
}

