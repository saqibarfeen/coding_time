fig12x010<-function(){
#
require(ggplot2)
#
# Requires textbook R data set Perch.RData 
# which contains dataframe Perch
#
graphics.off()
windows(width=4.5,height=4.5)
#
figure<-ggplot(Perch,aes(x=Weight,y=Length2)) + 
geom_point(shape=21) +
geom_smooth(method="loess") +
theme(axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
scale_x_continuous(breaks=seq(0,1200,200),
limits=c(0,1200)) +
scale_y_continuous(limits=c(0,50)) +
labs(x="Mass (g)",
y="Length from Nose to Notch of Tail (cm)")
#
print(figure)
#
# A call of
# dev.copy2eps(file="fig12x010.eps",colormodel="cmyk")
# will not work because of the semi-transparent confidence
# bands in the figure. Instead, the following is done
# which relies on the ability of the "Cairo" package to
# handle semi-transparency in figures.
#
ggsave("fig12x010.eps",device=cairo_ps,
fallback_resolution = 600)
#
dev.copy2pdf(file="fig12x010.pdf",colormodel="cmyk")
}

