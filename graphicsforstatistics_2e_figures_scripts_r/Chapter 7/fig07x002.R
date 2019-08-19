fig07x002<-function(){
#
require(ggplot2)
require(ggthemes)
#
graphics.off()
windows(width=4.5,height=4.5)
#
set.seed(seed=136073225)
z<-rnorm(500,65,10)
normdev<-data.frame(z=z)
#
figure <- ggplot(normdev, aes(x=z)) + 
geom_histogram(breaks=(5:20)*5,
closed="right",color="black",fill="white",
aes(x=z,y=..density..)) + 
stat_function(fun=dnorm,
args=list(mean=mean(z),s =sd(z))) +
theme_linedraw() + 
theme(panel.grid=element_blank(),
panel.border = element_rect(fill=NULL,
color="white",linetype="solid"),
axis.line=element_line(),
axis.title=element_text(size=12),
axis.text=element_text(size=12)) +
scale_x_continuous(breaks=20*(1:5),
limits=c(20,100)) +
labs(x="Normal Deviate",y="Relative Frequency")
#
print(figure)
#
dev.copy2eps(file="fig07x002.eps")
dev.copy2pdf(file="fig07x002.pdf")
}
