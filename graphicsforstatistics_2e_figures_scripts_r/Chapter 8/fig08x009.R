fig08x009<-function(){
#
require(ggplot2)
#
graphics.off()
windows(width=4.5,height=2.0)
#
haireye<-matrix(data=c(7,10,16,94,26,14,
14,17,119,54,29,84,68,15,5,20),nrow=4,ncol=4,
byrow=TRUE,dimnames=list(c("Blond",
"Red","Brunette","Black"),
c("Brown","Hazel","Green","Blue")))
#
haircol<-unlist(dimnames(haireye)[1])
eyecol<-unlist(dimnames(haireye)[2])
#
hair<-rep(" ",16)
eye<-rep(" ",16)
freq<-rep(0,16)
#
n=0
#
for (i in 1:4){ for (j in 1:4){
n<-n+1
hair[n]<-haircol[i]
eye[n]<-eyecol[j]
freq[n]<-haireye[i,j]
}}
#
hair<-factor(hair,levels=rev(haircol),ordered=TRUE)
eye<-factor(eye,levels=rev(eyecol),ordered=TRUE)
#
haireyef<-data.frame(hair=hair,eye=eye,freq=freq)
#
figure<-ggplot(haireyef,aes(x=eye,y=freq))+
geom_pointrange(ymin=0,ymax=100,linetype=3)+
facet_grid(~hair)+
labs(x="Eye Color",y="Frequency")+
theme(panel.grid=element_blank())+
coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig08x009.eps")
dev.copy2pdf(file="fig08x009.pdf")
}

