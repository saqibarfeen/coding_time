fig08x016<-function(){
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
eye<-factor(eye,levels=eyecol,ordered=TRUE)
#
he<-freq
nhe<-length(he)
hesum<-sum(he)
he<-he/sum(he)
sd<-sqrt((1.-he)*he/hesum)
hlo<-he-sd
hhi<-he+sd
#
haireyerfs<-data.frame(hair=hair,eye=eye,freq=he,
hlo=hlo,hhi=hhi)
#
figure <- ggplot(haireyerfs,aes(x=hair,
y=freq,fill=factor(rev(eye))))+
geom_bar(position=position_dodge(),stat="identity")+
scale_fill_manual(values=c("blue","green4",
"darkgoldenrod3","brown4"),
limits=c("Brown","Hazel","Green","Blue"),
labels=rev(c("Brown","Hazel","Green","Blue")))+
geom_errorbar(aes(ymin=hlo,ymax=hhi,
color=factor(rev(eye))),width=0.2,
position=position_dodge(.9),show.legend=FALSE)+
scale_color_manual(values=c("blue","green4",
"darkgoldenrod3","brown4"),
limits=c("Brown","Hazel","Green","Blue"),
labels=rev(c("Brown","Hazel","Green","Blue")))+
theme(panel.grid=element_blank())+
labs(x="Hair Color",y="Relative Frequency",
fill="Eye Color")+
guides(fill=guide_legend(reverse=TRUE))+
coord_flip()
#
print(figure)
#
dev.copy2eps(file="fig08x016.eps",colormodel="cmyk")
dev.copy2pdf(file="fig08x016.pdf",colormodel="cmyk")
}

