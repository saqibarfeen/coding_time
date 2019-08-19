fig10x002<-function(){
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
figure<-ggplot(Galton, aes(x=Mother+60,
y=Father+60)) + 
geom_point(shape=1) + theme_linedraw() + 
theme(panel.grid=element_blank(),
axis.line=element_line(),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
scale_x_continuous(breaks=55+5*(0:4),
limits=c(55,75)) +
scale_y_continuous(breaks=60+5*(0:4),
limits=c(60,80)) +
labs(x="Wife's Height (inch)",
y="Husband's Height (inch)")
#
print(figure)
#
dev.copy2eps(file="fig10x002.eps")
dev.copy2pdf(file="fig10x002.pdf")
}

