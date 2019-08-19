fig09x017<-function(){
#
require(ggplot2)
#
# Requires textbook R data set Fishcatch.RData which contains
# dataframe Fishcatch
#
trellis.device(color=FALSE)
#
graphics.off()
windows(width=4.5,height=4.5)
plot.new()
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(rev(c(1,6,2)),rev(c(7,3,4)),5),
labels=c(rev(c("Bream","Pike","Ide")),
rev(c("Perch","Roach","Silver Bream")),"Smelt"))
#
fcwf<-data.frame(Species=fc$Species,
Weight=fc$Weight)
#
figure<-ggplot(fcwf,aes(x=Weight))+
geom_density(bw=139.86)+
facet_wrap(~Species,as.table=FALSE)+
scale_x_continuous(limits=c(0,2000),
breaks=(0:4)*500,
labels=c("0","500","","1500",""))+
scale_y_continuous(limits=c(0,0.003))+
theme(panel.grid=element_blank())+
labs(x="Mass (g)",y="Relative Density")
#
print(figure)
#
dev.copy2eps(file="fig09x017.eps")
dev.copy2pdf(file="fig09x017.pdf")
}

