fig03x013<-function(){
#
require(ggplot2)
require(ggthemes)
#
name<-c("Epidermals",
"Dust Mites","Weeds","Grasses","Molds","Trees")
name<-factor(name,levels=name,ordered=TRUE)
allergen<-data.frame(names=name,
prevs=c(38.2,37.8,31.1,31.1,29.3,26.7),
se=c(3.2,3.2,3.1,3.1,3.0,2.9))
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
#
figure <- ggplot(allergen, aes(name, prevs)) + 
theme_base() + theme(plot.background =
element_rect(fill = NULL, color = "white",
linetype = "solid"),
panel.border = element_rect(fill=NULL,color="white",
linetype="solid"),
axis.ticks.y = element_blank(),
axis.line.x =  element_line(),
plot.margin = margin(0,14,7,0,unit="pt")) +
scale_y_continuous(expand=c(0,0),
breaks=10*(0:5),limits=c(0,50)) + 
geom_col(fill="black") +
geom_errorbar(aes(ymin=prevs,ymax=prevs+se),
width=0) + coord_flip() +
labs(x=NULL,y="Percent")
#
print(figure)
# 
dev.copy2eps(file="fig03x013.eps")
dev.copy2pdf(file="fig03x013.pdf")
}

