fig08x003<-function(){
#
require(ggplot2)
#
graphics.off()
windows(width=4.5,height=4.5)
#
haireye<-matrix(data=c(7,10,16,94,26,14,14,17,119,54,29,84,
68,15,5,20),nrow=4,ncol=4,byrow=TRUE,dimnames=list(c("Blond",
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
hair<-factor(hair,levels=haircol,ordered=TRUE)
eye<-factor(eye,levels=rev(eyecol),ordered=TRUE)
#
haireyef<-data.frame(hair=hair,eye=eye,freq=freq)
#
figure<-ggplot(haireyef,aes(x=eye,ymin=0,ymax=freq,
y=freq))+
geom_pointrange(aes(shape=factor(hair,
levels=haircol,ordered=TRUE),
color=factor(hair,levels=haircol,ordered=TRUE)),
position=position_dodge(width=0.5),linetype=3)+
scale_shape_manual(values=15:18)+
scale_color_manual(values=rev(c("black","brown",
"red","gold")))+
coord_flip()+
labs(x="Eye Color",y="Frequency",
shape="Hair Color",color="Hair Color")+
guides(shape=guide_legend(reverse=TRUE),
color=guide_legend(reverse=TRUE))+
theme(panel.grid=element_blank())
#
print(figure)
#
dev.copy2eps(file="fig08x003.eps",colormodel="cmyk")
dev.copy2pdf(file="fig08x003.pdf",colormodel="cmyk")
}

