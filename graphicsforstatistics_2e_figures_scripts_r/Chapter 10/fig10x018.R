fig10x018<-function(){
#
require(ggplot2)
require(ggthemes)
#
# Requires textbook R data set Galton.RData 
# which contains dataframe Galton
#
graphics.off()
windows(width=4.5,height=4.5)
#
figure<-ggplot(Galton,aes(x=Mother+60,y=Father+60)) + 
stat_density_2d(aes(fill = ..level..),
geom = "polygon") +
theme_linedraw() +
theme(panel.grid=element_blank(),
axis.line=element_line(),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
guides(fill=guide_legend(title="Density",
reverse=TRUE))+
scale_x_continuous(breaks=seq(57,71,2),
limits=c(57,71)) +
scale_y_continuous(breaks=seq(61,79,2),
limits=c(61,79)) +
labs(x="Wife's Height (inch)",
y="Husband's Height (inch)")
#
print(figure)
#
dev.copy2eps(file="fig10x018.eps",colormodel="cymk")
dev.copy2pdf(file="fig10x018.pdf",colormodel="cmyk")
}


