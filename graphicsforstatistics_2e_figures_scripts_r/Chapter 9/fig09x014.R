fig09x014<-function(){
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
levels=c(6,1,2,7,4,3,5),
labels=c("Pike","Bream","Ide","Perch",
"Silver Bream","Roach","Smelt"))
#
means<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=mean,na.rm=TRUE)
sdf<-tapply(fc[,"Weight"],INDEX=fc[,"Species"],
FUN=sd,na.rm=TRUE)
fc$Iswna<-!is.na(fc$Weight)
counts<-tapply(fc[,"Iswna"],INDEX=fc[,"Species"],
FUN=sum)
se<-sdf/sqrt(counts)
qf<-qnorm(0.975)
sds<-qf*sdf/sqrt(2*counts)
#
fcsf<-data.frame(Species=levels(fc$Species),
means=means,se=se,sds=sds)
#
figure<-ggplot(fcsf,aes(y=means,
x=factor(fcsf$Species,levels=fcsf$Species)))+
geom_point(fill="black",size=2) +
geom_errorbar(aes(ymin=means-se,ymax=means+se),
width=0.2)+
geom_errorbar(aes(ymin=means-sds,ymax=means+sds),
width=0)+
ylim(0,1000)+
theme(panel.grid=element_blank(),
axis.ticks.y=element_blank())+
labs(x="",y="Mass (g)")+coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig09x014.eps")
dev.copy2pdf(file="fig09x014.pdf")
}

