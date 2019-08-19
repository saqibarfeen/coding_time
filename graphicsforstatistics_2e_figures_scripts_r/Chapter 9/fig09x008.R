fig09x008<-function(){
#
require(ggplot2)
#
# Requires textbook R data set Fishcatch.RData 
# which contains the list Fishcatch
#
graphics.off()
windows(width=4.5,height=4.5)
#
fc<-Fishcatch
#
fc$Species<-ordered(fc$Species,
levels=c(1,6,2,7,3,4,5),
labels=c("Bream","Pike","Ide","Perch",
"Roach","Silver Bream","Smelt"))
#
fcf<-as.data.frame(fc)
#
meds<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=median,na.rm=TRUE)
meds<-sort(meds,decreasing=TRUE)
#
figure<-ggplot(fcf,aes(y=Weight,x=Species))+
geom_boxplot(alpha=0,notch=TRUE,varwidth=TRUE)+
theme(panel.grid=element_blank(),
axis.ticks.y=element_blank())+
labs(x="",y="Mass (g)")+coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig09x008.eps")
dev.copy2pdf(file="fig09x008.pdf")
}

