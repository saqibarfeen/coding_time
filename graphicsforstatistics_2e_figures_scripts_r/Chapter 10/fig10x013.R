fig10x013<-function(){
#
require(ggplot2)
require(ggthemes)
require(LSD)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=4.0)
#
# Discete 10-color topographic scale enhanced for 
# individuals with the color-vision deficiency
# known as deuteranopia is used
#
topod10<-daltonize(topo.colors(10),cvd="d",show = FALSE)[[2]]
#
figure<-ggplot(Galton,aes(x=Mother+60,y=Father+60)) + 
stat_bin_hex(binwidth=1) +
stat_ellipse(type="norm",level=0.95) +
scale_fill_gradientn(colors=topod10,breaks=9:0) +
theme_linedraw() +
theme(panel.grid=element_blank(),
axis.line=element_line(),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
guides(fill=guide_legend(title="Count",
reverse = FALSE))+
scale_x_continuous(breaks=55+5*(0:4),
limits=c(55,75)) +
scale_y_continuous(breaks=60+5*(0:4),
limits=c(60,80)) +
labs(x="Wife's Height (inch)",
y="Husband's Height (inch)")
#
print(figure)
#
dev.copy2eps(file="fig10x013.eps",colormodel="cmyk")
dev.copy2pdf(file="fig10x013.pdf",colormodel="cmyk")
}

